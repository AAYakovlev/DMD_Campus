CREATE OR REPLACE FUNCTION insert_into_in_out(_person_id INT4, _ecm_id INT4, _direction CHAR(1)) RETURNS BOOL AS $$
  DECLARE const_g_id INT4;
  DECLARE last_direction CHAR(1);
  BEGIN
    IF (exists(SELECT ep.entry_permission_id, ecm.ecm_id  FROM person
                  NATURAL JOIN person_has_ep_set
                  NATURAL JOIN entry_permission_set
                  NATURAL JOIN ep_set_has_ep
                  NATURAL JOIN entry_permission ep
                  JOIN entry_check_machine ecm ON ep.entry_permission_id = ecm.entry_permission_id
                  WHERE person.person_id = _person_id AND ecm.ecm_id = _ecm_id))
    THEN
      SELECT constraint_group_id FROM entry_check_machine
	  WHERE ecm_id = _ecm_id
	  INTO const_g_id;

      IF ((const_g_id) ISNULL )
      THEN
        INSERT INTO in_out (person_id, ecm_id, direction, date_time, accepted) VALUES (_person_id,_ecm_id,_direction,now(),TRUE);
        RETURN TRUE;
      ELSE
        SELECT direction FROM in_out
                            NATURAL JOIN entry_check_machine
                      WHERE in_out.person_id = _person_id
                            AND  entry_check_machine.constraint_group_id = const_g_id
                            AND in_out.accepted = TRUE
                      ORDER BY date_time DESC
                      LIMIT 1
        INTO last_direction;
        IF (last_direction = _direction)
          THEN
            RAISE NOTICE 'several entry in one direction';
            INSERT INTO in_out (person_id, ecm_id, direction, date_time, accepted) VALUES (_person_id,_ecm_id,_direction,now(),FALSE );
            RETURN FALSE;
          ELSE
            INSERT INTO in_out (person_id, ecm_id, direction, date_time, accepted) VALUES (_person_id,_ecm_id,_direction,now(),TRUE);
            RETURN TRUE;
        END IF;

      END IF;
    ELSE
      RAISE NOTICE 'no permission';
      INSERT INTO in_out (person_id, ecm_id, direction, date_time, accepted) VALUES (_person_id,_ecm_id,_direction,now(),FALSE );
      RETURN FALSE;
    END IF;
  END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_person_into_appartment(person_id INTEGER,
                                                      apartment_number INTEGER, building_id_param INTEGER, date_time_start_param TIMESTAMP) RETURNS VOID AS $$
BEGIN
  IF (apartment_number IN ( SELECT a.apartment_number FROM apartments_with_free_beds AS a WHERE a.building_id = building_id_param))
  THEN
    INSERT INTO lives_in VALUES (person_id, apartment_number, building_id_param, date_time_start_param);
  ELSE
    RAISE EXCEPTION 'No free places'
    USING HINT = 'Check apt number and building id';
  END IF ;
END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION add_new_student (first_name VARCHAR(50),middle_name VARCHAR(50),family_name VARCHAR(200),
                                            gender CHAR, dob TIMESTAMP, image_path VARCHAR(200),
                                            scholarship INTEGER) RETURNS VOID AS $$
DECLARE
  new_person_id INTEGER;
  new_doc_id INTEGER;
BEGIN
  SELECT nextval('person_person_id_seq'::REGCLASS) INTO new_person_id;

  BEGIN
    SET CONSTRAINTS ALL DEFERRED;
    INSERT INTO document VALUES (nextval('document_document_id_seq'::REGCLASS), new_person_id, current_timestamp + INTERVAL '1 year', 1, image_path)
    RETURNING document_id INTO new_doc_id;
    INSERT INTO person VALUES (new_person_id, first_name, middle_name, family_name, dob, gender,  new_doc_id);
  END;

    INSERT INTO student VALUES (new_person_id, scholarship);
    INSERT INTO account VALUES (nextval('account_account_id_seq'::REGCLASS), new_person_id,1); -- rental_fee
    INSERT INTO account VALUES (nextval('account_account_id_seq'::REGCLASS), new_person_id,2); -- tuition_fee
    INSERT INTO account VALUES (nextval('account_account_id_seq'::REGCLASS), new_person_id,4); -- Scholarship
    INSERT INTO person_has_ep_set VALUES (new_person_id, 4);  -- base for persons
    INSERT INTO person_has_ep_set VALUES (new_person_id, 1);  -- base for students
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_new_employee (first_name VARCHAR(50),middle_name VARCHAR(50),family_name VARCHAR(200),
                                             gender CHAR, dob TIMESTAMP, salary INTEGER,
                                             role VARCHAR(50), image_path VARCHAR(200)) RETURNS VOID AS $$
DECLARE
  new_person_id INTEGER;
  new_doc_id INTEGER;
  role_id INTEGER;
BEGIN
  SELECT employee_role.employee_role_id INTO role_id FROM employee_role WHERE role_name LIKE role;
  SELECT nextval('person_person_id_seq'::REGCLASS) INTO new_person_id;

  BEGIN
    SET CONSTRAINTS ALL DEFERRED;
    INSERT INTO document VALUES (nextval('document_document_id_seq'::REGCLASS), new_person_id, current_timestamp + INTERVAL '1 year', 1, image_path)
    RETURNING document_id INTO new_doc_id;
    INSERT INTO person VALUES (new_person_id, first_name, middle_name, family_name, dob, gender,  new_doc_id);
  END;
    INSERT INTO employee VALUES (new_person_id, salary, role_id);
    INSERT INTO account VALUES (nextval('account_account_id_seq'::REGCLASS), new_person_id, 1); -- rental_fee
    INSERT INTO account VALUES (nextval('account_account_id_seq'::REGCLASS), new_person_id, 3); -- Salary
    INSERT INTO person_has_ep_set VALUES (new_person_id, 4);  -- base for persons
    IF (role_id = 4 OR role_id = 5)
    THEN
      INSERT INTO person_has_ep_set VALUES (new_person_id, 6);  -- canteen staff
    ELSEIF (role_id = 3 OR role_id = 6)
      THEN
        INSERT INTO person_has_ep_set VALUES (new_person_id, 2);  -- administrator
    ELSEIF (role_id = 2)
      THEN
        INSERT INTO person_has_ep_set VALUES (new_person_id, 7);  -- cleaning
    END IF;
END;
$$ LANGUAGE plpgsql;

-- -----------------------
-- add guest to person
-- -----------------------
DROP FUNCTION IF EXISTS add_guest_to_person(integer,integer);
CREATE OR REPLACE FUNCTION public.add_guest_to_person(_guest_person_id integer, _person_id integer)
 RETURNS BOOL
 LANGUAGE plpgsql
AS $function$

BEGIN
 IF (NOT exists(SELECT * FROM guest WHERE guest.person_id = _guest_person_id))
  THEN
    RAISE NOTICE 'No guest person';
   RETURN FALSE;

 END IF;

  IF (not exists(SELECT person_id from student WHERE student.person_id = _person_id
                  UNION
                SELECT person_id FROM  employee WHERE employee.person_id = _person_id))
    THEN
    RAISE NOTICE 'Host should be students or employee';
    RETURN FALSE;
  END IF;

  IF (exists(SELECT * FROM guest_to_person
                                      WHERE guest_to_person.guest_person_id = _guest_person_id
                                        AND  guest_to_person.date_time_end IS NULL))
    THEN
    RAISE NOTICE 'Guest should leave before come in again';
    RETURN FALSE;
  END IF;

  INSERT INTO guest_to_person (guest_person_id, person_id, date_time_start, date_time_end )  VALUES (_guest_person_id,_person_id,now(),NULL);
  RETURN TRUE;
END;
$function$


CREATE OR REPLACE FUNCTION public.create_guest_person(_first_name character varying, _middle_name character varying, _family_name character varying, _gender character, _date_of_birth timestamp without time zone, _update_to_date timestamp without time zone, _document_type_id integer, _image_path character varying, _host_person_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$
DECLARE
  new_person_id INTEGER;
  new_guest_id INTEGER;
  new_doc_id INTEGER;
BEGIN
  SELECT person.person_id FROM person WHERE person.date_of_birth = _date_of_birth
                                        AND person.family_name = _family_name
                                        AND person.first_name = _first_name
  INTO new_person_id;
  IF (new_person_id IS NOT NULL )
    THEN
      SELECT person_id FROM guest WHERE person_id = new_person_id INTO new_guest_id;
      IF (new_guest_id IS NULL )
        THEN
          RAISE EXCEPTION 'Person is exist but not as guest'
          USING HINT = 'You can not create a guest who already working here';
        ELSE
          IF (SELECT add_guest_to_person(new_guest_id,_host_person_id) = TRUE)
            THEN
            RETURN TRUE;
            ELSE
            RETURN FALSE;
          END IF;
      END IF;
    ELSE

      SELECT nextval('person_person_id_seq'::REGCLASS) INTO new_person_id;
      SELECT nextval('document_document_id_seq'::REGCLASS) INTO new_doc_id;
      BEGIN
        SET CONSTRAINTS ALL DEFERRED;
        INSERT INTO document VALUES (new_doc_id, new_person_id, _update_to_date, _document_type_id, _image_path);
        INSERT INTO person VALUES (new_person_id, _first_name, _middle_name, _family_name, _date_of_birth, _gender,  new_doc_id);
        INSERT INTO guest VALUES (new_person_id);
      END;

      IF (SELECT add_guest_to_person(new_person_id,_host_person_id) = TRUE)
        THEN
          RETURN TRUE;
        ELSE
          BEGIN
            SET CONSTRAINTS ALL DEFERRED;
            DELETE FROM person WHERE person_id = new_person_id;
            DELETE FROM document WHERE document_id = new_doc_id;
            DELETE FROM guest WHERE person_id = new_person_id;
          END;
          RETURN FALSE;
      END IF;
  END IF;

END;
$function$

DROP FUNCTION IF EXISTS guest_left_from_person(integer,integer);
CREATE OR REPLACE FUNCTION public.guest_left_from_person(_guest_person_id integer, _person_id integer)
 RETURNS boolean
 LANGUAGE plpgsql
AS $function$

BEGIN
 IF (NOT exists(SELECT * FROM guest WHERE guest.person_id = _guest_person_id))
  THEN
    RAISE NOTICE 'No guest person';
    RETURN FALSE;
  END IF;

  IF (not exists(SELECT person_id from student WHERE student.person_id = _person_id
                  UNION
                SELECT person_id FROM  employee WHERE employee.person_id = _person_id))
    THEN
    RAISE NOTICE 'Host should be students or employee';
   RETURN FALSE;
  END IF;

  IF (NOT exists(SELECT * FROM guest_to_person
                                      WHERE guest_to_person.guest_person_id = _guest_person_id
                                        AND  guest_to_person.person_id = _person_id
                                        AND  guest_to_person.date_time_end IS NULL))
    THEN
      RAISE NOTICE 'Not registered';
      RETURN FALSE;
    ELSE
      UPDATE guest_to_person SET date_time_end = now()
      WHERE guest_person_id = _guest_person_id
                                          AND  person_id = _person_id
                                          AND  date_time_end IS NULL;
      RETURN TRUE;
  END IF;
END;
$function$