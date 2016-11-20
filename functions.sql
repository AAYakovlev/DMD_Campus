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