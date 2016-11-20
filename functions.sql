CREATE OR REPLACE FUNCTION add_person_into_appartment (first_name VARCHAR(50),middle_name VARCHAR(50),family_name VARCHAR(50),
                                                       appartment_number INTEGER, building_id INTEGER, date_time_start TIMESTAMP) RETURNS VOID AS $$
DECLARE
  person_id INTEGER;
BEGIN
  SELECT person.person_id INTO person_id FROM person WHERE first_name = person.first_name AND middle_name = person.middle_name
                                                           AND family_name = person.family_name;

  IF (appartment_number IN ( SELECT appartment_number FROM apartments_with_free_beds WHERE
    building_id = apartments_with_free_beds.building_id))
  THEN
    INSERT INTO lives_in VALUES (person_id, appartment_number, building_id, date_time_start);
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