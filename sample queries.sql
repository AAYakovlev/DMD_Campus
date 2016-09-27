-- SELECT * FROM guest_document_person_apartment gdpa 
-- WHERE (gdpa.`starting` BETWEEN '2016-06-12 18:00:00' AND '2016-06-13') AND gdpa.building_id = 7

--   SELECT * FROM guest_document_person_apartment gdpa
--     WHERE gdpa.ending > NOW() OR ISNULL(gdpa.ending)

--   SELECT COUNT( DISTINCT gdpa.guest_id) FROM guest_document_person_apartment gdpa
--     WHERE gdpa.ending > NOW() OR ISNULL(gdpa.ending)

--     SELECT * FROM apartment a
--   JOIN role_on_apartment roa ON a.id = roa.apartment_id
--   JOIN person p ON roa.person_id = p.id
--   WHERE a.building_id = 3 AND a.number = 128

--   SELECT * FROM apartment a
--   JOIN role_on_apartment roa ON a.id = roa.apartment_id
--   JOIN person p ON roa.person_id = p.id
--   WHERE a.building_id = 3 AND roa.`starting` BETWEEN '2016-06-06' AND '2016-06-13'

--   SELECT * FROM person p 
-- WHERE MONTH(p.birth_date) = MONTH(NOW()) AND DAYOFMONTH(p.birth_date) = DAYOFMONTH(NOW())

--   SELECT roa.person_id, p.first_name, p.family_name, p.sex, p.birth_date, p.entry, a.building_id, a.number, a.beds, a.rooms, a.space FROM person p 
--     JOIN role_on_apartment roa ON p.id = roa.person_id
--     JOIN apartment a ON roa.apartment_id = a.id
--     WHERE p.first_name = 'Дарья'  AND p.family_name = 'Соловьёва'