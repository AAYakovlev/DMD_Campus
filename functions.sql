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

CREATE OR REPLACE FUNCTION add_person_into_appartment(first_name_param  VARCHAR(50), middle_name_param VARCHAR(50), family_name_param VARCHAR(50),
                                                      apartment_number INTEGER, building_id_param INTEGER, date_time_start_param TIMESTAMP) RETURNS VOID AS $$
DECLARE
  new_person_id INTEGER;
BEGIN
  SELECT p.person_id INTO new_person_id FROM person AS p WHERE (p.first_name=first_name_param) IS NOT FALSE AND (p.middle_name=middle_name_param) IS NOT FALSE
                                                               AND (p.family_name=family_name_param) IS NOT FALSE;

  IF (apartment_number IN ( SELECT a.apartment_number FROM apartments_with_free_beds AS a WHERE a.building_id = building_id_param))
  THEN
    INSERT INTO lives_in VALUES (new_person_id, apartment_number, building_id_param, date_time_start_param);
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
  new_student_id INTEGER;
  new_doc_id INTEGER;
BEGIN
  --   find next ids
  SELECT person.person_id + 1 INTO new_person_id FROM person ORDER BY person_id DESC LIMIT 1;
  SELECT student.student_id + 1 INTO new_student_id FROM student ORDER BY student_id DESC LIMIT 1;
  SELECT document.document_id + 1 INTO new_doc_id FROM document ORDER BY document_id DESC LIMIT 1;

  BEGIN
    SET CONSTRAINTS ALL DEFERRED;
    INSERT INTO document VALUES (new_doc_id, new_person_id, current_timestamp, 1, image_path);
    INSERT INTO person VALUES (new_person_id, first_name, middle_name, family_name, dob, gender,  new_doc_id);
    INSERT INTO student VALUES (new_student_id, new_person_id, scholarship);
  END;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION add_new_employee (first_name VARCHAR(50),middle_name VARCHAR(50),family_name VARCHAR(200),
                                             gender CHAR, dob TIMESTAMP, salary INTEGER,
                                             role VARCHAR(50), image_path VARCHAR(200)) RETURNS VOID AS $$
DECLARE
  new_person_id INTEGER;
  new_emp_id INTEGER;
  new_doc_id INTEGER;
  role_id INTEGER;
BEGIN
  SELECT person.person_id + 1 INTO new_person_id FROM person ORDER BY person_id DESC LIMIT 1;
  SELECT employee.employee_id + 1 INTO new_emp_id FROM employee ORDER BY employee_id DESC LIMIT 1;
  SELECT document.document_id + 1 INTO new_doc_id FROM document ORDER BY document_id DESC LIMIT 1;
  SELECT employee_role.employee_role_id INTO role_id FROM employee_role WHERE role_name LIKE role;

  BEGIN
    SET CONSTRAINTS ALL DEFERRED;
    INSERT INTO document VALUES (new_doc_id, new_person_id, current_timestamp, 1, image_path);
    INSERT INTO person VALUES (new_person_id, first_name, middle_name, family_name, dob, gender,  new_doc_id);
    INSERT INTO employee VALUES (new_emp_id, new_person_id, salary, role_id);
  END;
END;
$$ LANGUAGE plpgsql;