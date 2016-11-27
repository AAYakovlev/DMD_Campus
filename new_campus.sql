-- ----------------------------
-- Sequence structure for account_account_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."account_account_id_seq" CASCADE;
CREATE SEQUENCE "public"."account_account_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 37
 CACHE 1;
SELECT setval('"public"."account_account_id_seq"', 37, true);

-- ----------------------------
-- Sequence structure for apartment_type_apartment_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."apartment_type_apartment_type_id_seq" CASCADE;
CREATE SEQUENCE "public"."apartment_type_apartment_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;

-- ----------------------------
-- Sequence structure for building_building_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."building_building_id_seq" CASCADE;
CREATE SEQUENCE "public"."building_building_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;

-- ----------------------------
-- Sequence structure for document_document_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."document_document_id_seq" CASCADE;
CREATE SEQUENCE "public"."document_document_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;

-- ----------------------------
-- Sequence structure for document_type_document_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."document_type_document_type_id_seq" CASCADE;
CREATE SEQUENCE "public"."document_type_document_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;
SELECT setval('"public"."document_type_document_type_id_seq"', 10, true);

-- ----------------------------
-- Sequence structure for employee_role_employee_role_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."employee_role_employee_role_id_seq" CASCADE;
CREATE SEQUENCE "public"."employee_role_employee_role_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;

-- ----------------------------
-- Sequence structure for entry_check_machine_ecm_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."entry_check_machine_ecm_id_seq" CASCADE;
CREATE SEQUENCE "public"."entry_check_machine_ecm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 84
 CACHE 1;
SELECT setval('"public"."entry_check_machine_ecm_id_seq"', 84, true);

-- ----------------------------
-- Sequence structure for entry_permission_entry_permission_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."entry_permission_entry_permission_id_seq" CASCADE;
CREATE SEQUENCE "public"."entry_permission_entry_permission_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23
 CACHE 1;
SELECT setval('"public"."entry_permission_entry_permission_id_seq"', 23, true);

-- ----------------------------
-- Sequence structure for entry_permission_set_ep_set_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."entry_permission_set_ep_set_id_seq" CASCADE;
CREATE SEQUENCE "public"."entry_permission_set_ep_set_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;

-- ----------------------------
-- Sequence structure for person_person_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."person_person_id_seq" CASCADE;
CREATE SEQUENCE "public"."person_person_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;

-- ----------------------------
-- Sequence structure for transaction_transaction_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."transaction_transaction_id_seq" CASCADE;
CREATE SEQUENCE "public"."transaction_transaction_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1175
 CACHE 1;

-- ----------------------------
-- Sequence structure for transaction_type_transaction_type_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."transaction_type_transaction_type_id_seq" CASCADE;
CREATE SEQUENCE "public"."transaction_type_transaction_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS "public"."account" CASCADE;
CREATE TABLE "public"."account" (
"account_id" int4 DEFAULT nextval('account_account_id_seq'::regclass) NOT NULL,
"person_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO "public"."account" VALUES ('1', '2');
INSERT INTO "public"."account" VALUES ('3', '5');
INSERT INTO "public"."account" VALUES ('6', '3');
INSERT INTO "public"."account" VALUES ('9', '6');
INSERT INTO "public"."account" VALUES ('10', '8');
INSERT INTO "public"."account" VALUES ('16', '1');
INSERT INTO "public"."account" VALUES ('17', '4');
INSERT INTO "public"."account" VALUES ('18', '7');
INSERT INTO "public"."account" VALUES ('19', '9');
INSERT INTO "public"."account" VALUES ('20', '10');
INSERT INTO "public"."account" VALUES ('31', '21');
INSERT INTO "public"."account" VALUES ('32', '22');
INSERT INTO "public"."account" VALUES ('33', '23');
INSERT INTO "public"."account" VALUES ('34', '24');
INSERT INTO "public"."account" VALUES ('35', '25');
INSERT INTO "public"."account" VALUES ('36', '26');

-- ----------------------------
-- Table structure for apartment
-- ----------------------------
DROP TABLE IF EXISTS "public"."apartment" CASCADE;
CREATE TABLE "public"."apartment" (
"building_id" int4 NOT NULL,
"apartment_number" int4 NOT NULL,
"apartment_type_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of apartment
-- ----------------------------
INSERT INTO "public"."apartment" VALUES ('1', '100', '3');
INSERT INTO "public"."apartment" VALUES ('1', '101', '2');
INSERT INTO "public"."apartment" VALUES ('1', '102', '3');
INSERT INTO "public"."apartment" VALUES ('1', '103', '1');
INSERT INTO "public"."apartment" VALUES ('1', '104', '1');
INSERT INTO "public"."apartment" VALUES ('1', '105', '3');
INSERT INTO "public"."apartment" VALUES ('1', '106', '2');
INSERT INTO "public"."apartment" VALUES ('1', '107', '2');
INSERT INTO "public"."apartment" VALUES ('1', '108', '3');
INSERT INTO "public"."apartment" VALUES ('1', '109', '3');
INSERT INTO "public"."apartment" VALUES ('1', '110', '3');
INSERT INTO "public"."apartment" VALUES ('1', '111', '2');
INSERT INTO "public"."apartment" VALUES ('1', '112', '3');
INSERT INTO "public"."apartment" VALUES ('1', '113', '3');
INSERT INTO "public"."apartment" VALUES ('1', '114', '1');
INSERT INTO "public"."apartment" VALUES ('1', '115', '3');
INSERT INTO "public"."apartment" VALUES ('1', '116', '2');
INSERT INTO "public"."apartment" VALUES ('1', '117', '2');
INSERT INTO "public"."apartment" VALUES ('1', '118', '3');
INSERT INTO "public"."apartment" VALUES ('1', '119', '3');
INSERT INTO "public"."apartment" VALUES ('1', '120', '3');
INSERT INTO "public"."apartment" VALUES ('1', '121', '1');
INSERT INTO "public"."apartment" VALUES ('1', '200', '2');
INSERT INTO "public"."apartment" VALUES ('1', '201', '3');
INSERT INTO "public"."apartment" VALUES ('1', '202', '3');
INSERT INTO "public"."apartment" VALUES ('1', '203', '3');
INSERT INTO "public"."apartment" VALUES ('1', '204', '1');
INSERT INTO "public"."apartment" VALUES ('1', '205', '1');
INSERT INTO "public"."apartment" VALUES ('1', '206', '1');
INSERT INTO "public"."apartment" VALUES ('1', '207', '3');
INSERT INTO "public"."apartment" VALUES ('1', '208', '1');
INSERT INTO "public"."apartment" VALUES ('1', '209', '2');
INSERT INTO "public"."apartment" VALUES ('1', '210', '1');
INSERT INTO "public"."apartment" VALUES ('1', '211', '3');
INSERT INTO "public"."apartment" VALUES ('1', '212', '1');
INSERT INTO "public"."apartment" VALUES ('1', '213', '3');
INSERT INTO "public"."apartment" VALUES ('1', '214', '2');
INSERT INTO "public"."apartment" VALUES ('1', '215', '1');
INSERT INTO "public"."apartment" VALUES ('1', '216', '3');
INSERT INTO "public"."apartment" VALUES ('1', '217', '2');
INSERT INTO "public"."apartment" VALUES ('1', '218', '3');
INSERT INTO "public"."apartment" VALUES ('1', '219', '3');
INSERT INTO "public"."apartment" VALUES ('1', '220', '2');
INSERT INTO "public"."apartment" VALUES ('1', '221', '1');
INSERT INTO "public"."apartment" VALUES ('1', '300', '3');
INSERT INTO "public"."apartment" VALUES ('1', '301', '2');
INSERT INTO "public"."apartment" VALUES ('1', '302', '1');
INSERT INTO "public"."apartment" VALUES ('1', '303', '3');
INSERT INTO "public"."apartment" VALUES ('1', '304', '2');
INSERT INTO "public"."apartment" VALUES ('1', '305', '1');
INSERT INTO "public"."apartment" VALUES ('1', '306', '3');
INSERT INTO "public"."apartment" VALUES ('1', '307', '2');
INSERT INTO "public"."apartment" VALUES ('1', '308', '1');
INSERT INTO "public"."apartment" VALUES ('1', '309', '1');
INSERT INTO "public"."apartment" VALUES ('1', '310', '2');
INSERT INTO "public"."apartment" VALUES ('1', '311', '1');
INSERT INTO "public"."apartment" VALUES ('1', '312', '3');
INSERT INTO "public"."apartment" VALUES ('1', '313', '3');
INSERT INTO "public"."apartment" VALUES ('1', '314', '2');
INSERT INTO "public"."apartment" VALUES ('1', '315', '2');
INSERT INTO "public"."apartment" VALUES ('1', '316', '2');
INSERT INTO "public"."apartment" VALUES ('1', '317', '2');
INSERT INTO "public"."apartment" VALUES ('1', '318', '1');
INSERT INTO "public"."apartment" VALUES ('1', '319', '2');
INSERT INTO "public"."apartment" VALUES ('1', '320', '1');
INSERT INTO "public"."apartment" VALUES ('1', '321', '1');
INSERT INTO "public"."apartment" VALUES ('1', '400', '3');
INSERT INTO "public"."apartment" VALUES ('1', '401', '2');
INSERT INTO "public"."apartment" VALUES ('1', '402', '2');
INSERT INTO "public"."apartment" VALUES ('1', '403', '2');
INSERT INTO "public"."apartment" VALUES ('1', '404', '1');
INSERT INTO "public"."apartment" VALUES ('1', '405', '1');
INSERT INTO "public"."apartment" VALUES ('1', '406', '2');
INSERT INTO "public"."apartment" VALUES ('1', '407', '1');
INSERT INTO "public"."apartment" VALUES ('1', '408', '1');
INSERT INTO "public"."apartment" VALUES ('1', '409', '3');
INSERT INTO "public"."apartment" VALUES ('1', '410', '2');
INSERT INTO "public"."apartment" VALUES ('1', '411', '2');
INSERT INTO "public"."apartment" VALUES ('1', '412', '1');
INSERT INTO "public"."apartment" VALUES ('1', '413', '1');
INSERT INTO "public"."apartment" VALUES ('1', '414', '3');
INSERT INTO "public"."apartment" VALUES ('1', '415', '2');
INSERT INTO "public"."apartment" VALUES ('1', '416', '2');
INSERT INTO "public"."apartment" VALUES ('1', '417', '2');
INSERT INTO "public"."apartment" VALUES ('1', '418', '3');
INSERT INTO "public"."apartment" VALUES ('1', '419', '3');
INSERT INTO "public"."apartment" VALUES ('1', '420', '3');
INSERT INTO "public"."apartment" VALUES ('1', '421', '3');
INSERT INTO "public"."apartment" VALUES ('2', '100', '2');
INSERT INTO "public"."apartment" VALUES ('2', '101', '2');
INSERT INTO "public"."apartment" VALUES ('2', '102', '3');
INSERT INTO "public"."apartment" VALUES ('2', '103', '1');
INSERT INTO "public"."apartment" VALUES ('2', '104', '3');
INSERT INTO "public"."apartment" VALUES ('2', '105', '1');
INSERT INTO "public"."apartment" VALUES ('2', '106', '3');
INSERT INTO "public"."apartment" VALUES ('2', '107', '3');
INSERT INTO "public"."apartment" VALUES ('2', '108', '2');
INSERT INTO "public"."apartment" VALUES ('2', '109', '2');
INSERT INTO "public"."apartment" VALUES ('2', '110', '2');
INSERT INTO "public"."apartment" VALUES ('2', '111', '1');
INSERT INTO "public"."apartment" VALUES ('2', '112', '1');
INSERT INTO "public"."apartment" VALUES ('2', '113', '3');
INSERT INTO "public"."apartment" VALUES ('2', '114', '3');
INSERT INTO "public"."apartment" VALUES ('2', '115', '2');
INSERT INTO "public"."apartment" VALUES ('2', '116', '1');
INSERT INTO "public"."apartment" VALUES ('2', '117', '2');
INSERT INTO "public"."apartment" VALUES ('2', '118', '1');
INSERT INTO "public"."apartment" VALUES ('2', '119', '1');
INSERT INTO "public"."apartment" VALUES ('2', '120', '3');
INSERT INTO "public"."apartment" VALUES ('2', '121', '1');
INSERT INTO "public"."apartment" VALUES ('2', '200', '2');
INSERT INTO "public"."apartment" VALUES ('2', '201', '1');
INSERT INTO "public"."apartment" VALUES ('2', '202', '3');
INSERT INTO "public"."apartment" VALUES ('2', '203', '2');
INSERT INTO "public"."apartment" VALUES ('2', '204', '1');
INSERT INTO "public"."apartment" VALUES ('2', '205', '3');
INSERT INTO "public"."apartment" VALUES ('2', '206', '2');
INSERT INTO "public"."apartment" VALUES ('2', '207', '2');
INSERT INTO "public"."apartment" VALUES ('2', '208', '1');
INSERT INTO "public"."apartment" VALUES ('2', '209', '3');
INSERT INTO "public"."apartment" VALUES ('2', '210', '1');
INSERT INTO "public"."apartment" VALUES ('2', '211', '1');
INSERT INTO "public"."apartment" VALUES ('2', '212', '2');
INSERT INTO "public"."apartment" VALUES ('2', '213', '1');
INSERT INTO "public"."apartment" VALUES ('2', '214', '3');
INSERT INTO "public"."apartment" VALUES ('2', '215', '3');
INSERT INTO "public"."apartment" VALUES ('2', '216', '1');
INSERT INTO "public"."apartment" VALUES ('2', '217', '1');
INSERT INTO "public"."apartment" VALUES ('2', '218', '1');
INSERT INTO "public"."apartment" VALUES ('2', '219', '3');
INSERT INTO "public"."apartment" VALUES ('2', '220', '2');
INSERT INTO "public"."apartment" VALUES ('2', '221', '1');
INSERT INTO "public"."apartment" VALUES ('2', '300', '3');
INSERT INTO "public"."apartment" VALUES ('2', '301', '3');
INSERT INTO "public"."apartment" VALUES ('2', '302', '3');
INSERT INTO "public"."apartment" VALUES ('2', '303', '2');
INSERT INTO "public"."apartment" VALUES ('2', '304', '3');
INSERT INTO "public"."apartment" VALUES ('2', '305', '2');
INSERT INTO "public"."apartment" VALUES ('2', '306', '2');
INSERT INTO "public"."apartment" VALUES ('2', '307', '1');
INSERT INTO "public"."apartment" VALUES ('2', '308', '1');
INSERT INTO "public"."apartment" VALUES ('2', '309', '1');
INSERT INTO "public"."apartment" VALUES ('2', '310', '1');
INSERT INTO "public"."apartment" VALUES ('2', '311', '2');
INSERT INTO "public"."apartment" VALUES ('2', '312', '2');
INSERT INTO "public"."apartment" VALUES ('2', '313', '2');
INSERT INTO "public"."apartment" VALUES ('2', '314', '1');
INSERT INTO "public"."apartment" VALUES ('2', '315', '3');
INSERT INTO "public"."apartment" VALUES ('2', '316', '3');
INSERT INTO "public"."apartment" VALUES ('2', '317', '3');
INSERT INTO "public"."apartment" VALUES ('2', '318', '2');
INSERT INTO "public"."apartment" VALUES ('2', '319', '1');
INSERT INTO "public"."apartment" VALUES ('2', '320', '1');
INSERT INTO "public"."apartment" VALUES ('2', '321', '2');
INSERT INTO "public"."apartment" VALUES ('2', '400', '3');
INSERT INTO "public"."apartment" VALUES ('2', '401', '3');
INSERT INTO "public"."apartment" VALUES ('2', '402', '2');
INSERT INTO "public"."apartment" VALUES ('2', '403', '1');
INSERT INTO "public"."apartment" VALUES ('2', '404', '2');
INSERT INTO "public"."apartment" VALUES ('2', '405', '2');
INSERT INTO "public"."apartment" VALUES ('2', '406', '2');
INSERT INTO "public"."apartment" VALUES ('2', '407', '1');
INSERT INTO "public"."apartment" VALUES ('2', '408', '2');
INSERT INTO "public"."apartment" VALUES ('2', '409', '3');
INSERT INTO "public"."apartment" VALUES ('2', '410', '2');
INSERT INTO "public"."apartment" VALUES ('2', '411', '3');
INSERT INTO "public"."apartment" VALUES ('2', '412', '3');
INSERT INTO "public"."apartment" VALUES ('2', '413', '1');
INSERT INTO "public"."apartment" VALUES ('2', '414', '1');
INSERT INTO "public"."apartment" VALUES ('2', '415', '3');
INSERT INTO "public"."apartment" VALUES ('2', '416', '2');
INSERT INTO "public"."apartment" VALUES ('2', '417', '2');
INSERT INTO "public"."apartment" VALUES ('2', '418', '1');
INSERT INTO "public"."apartment" VALUES ('2', '419', '1');
INSERT INTO "public"."apartment" VALUES ('2', '420', '2');
INSERT INTO "public"."apartment" VALUES ('2', '421', '1');
INSERT INTO "public"."apartment" VALUES ('3', '100', '1');
INSERT INTO "public"."apartment" VALUES ('3', '101', '2');
INSERT INTO "public"."apartment" VALUES ('3', '102', '3');
INSERT INTO "public"."apartment" VALUES ('3', '103', '1');
INSERT INTO "public"."apartment" VALUES ('3', '104', '3');
INSERT INTO "public"."apartment" VALUES ('3', '105', '3');
INSERT INTO "public"."apartment" VALUES ('3', '106', '1');
INSERT INTO "public"."apartment" VALUES ('3', '107', '2');
INSERT INTO "public"."apartment" VALUES ('3', '108', '3');
INSERT INTO "public"."apartment" VALUES ('3', '109', '1');
INSERT INTO "public"."apartment" VALUES ('3', '110', '3');
INSERT INTO "public"."apartment" VALUES ('3', '111', '1');
INSERT INTO "public"."apartment" VALUES ('3', '112', '3');
INSERT INTO "public"."apartment" VALUES ('3', '113', '2');
INSERT INTO "public"."apartment" VALUES ('3', '114', '3');
INSERT INTO "public"."apartment" VALUES ('3', '115', '1');
INSERT INTO "public"."apartment" VALUES ('3', '116', '1');
INSERT INTO "public"."apartment" VALUES ('3', '117', '2');
INSERT INTO "public"."apartment" VALUES ('3', '118', '3');
INSERT INTO "public"."apartment" VALUES ('3', '119', '2');
INSERT INTO "public"."apartment" VALUES ('3', '120', '1');
INSERT INTO "public"."apartment" VALUES ('3', '121', '1');
INSERT INTO "public"."apartment" VALUES ('3', '200', '1');
INSERT INTO "public"."apartment" VALUES ('3', '201', '3');
INSERT INTO "public"."apartment" VALUES ('3', '202', '1');
INSERT INTO "public"."apartment" VALUES ('3', '203', '1');
INSERT INTO "public"."apartment" VALUES ('3', '204', '2');
INSERT INTO "public"."apartment" VALUES ('3', '205', '3');
INSERT INTO "public"."apartment" VALUES ('3', '206', '1');
INSERT INTO "public"."apartment" VALUES ('3', '207', '1');
INSERT INTO "public"."apartment" VALUES ('3', '208', '2');
INSERT INTO "public"."apartment" VALUES ('3', '209', '3');
INSERT INTO "public"."apartment" VALUES ('3', '210', '1');
INSERT INTO "public"."apartment" VALUES ('3', '211', '3');
INSERT INTO "public"."apartment" VALUES ('3', '212', '1');
INSERT INTO "public"."apartment" VALUES ('3', '213', '2');
INSERT INTO "public"."apartment" VALUES ('3', '214', '2');
INSERT INTO "public"."apartment" VALUES ('3', '215', '2');
INSERT INTO "public"."apartment" VALUES ('3', '216', '3');
INSERT INTO "public"."apartment" VALUES ('3', '217', '3');
INSERT INTO "public"."apartment" VALUES ('3', '218', '1');
INSERT INTO "public"."apartment" VALUES ('3', '219', '3');
INSERT INTO "public"."apartment" VALUES ('3', '220', '3');
INSERT INTO "public"."apartment" VALUES ('3', '221', '2');
INSERT INTO "public"."apartment" VALUES ('3', '300', '2');
INSERT INTO "public"."apartment" VALUES ('3', '301', '1');
INSERT INTO "public"."apartment" VALUES ('3', '302', '3');
INSERT INTO "public"."apartment" VALUES ('3', '303', '3');
INSERT INTO "public"."apartment" VALUES ('3', '304', '3');
INSERT INTO "public"."apartment" VALUES ('3', '305', '2');
INSERT INTO "public"."apartment" VALUES ('3', '306', '2');
INSERT INTO "public"."apartment" VALUES ('3', '307', '2');
INSERT INTO "public"."apartment" VALUES ('3', '308', '3');
INSERT INTO "public"."apartment" VALUES ('3', '309', '2');
INSERT INTO "public"."apartment" VALUES ('3', '310', '2');
INSERT INTO "public"."apartment" VALUES ('3', '311', '3');
INSERT INTO "public"."apartment" VALUES ('3', '312', '3');
INSERT INTO "public"."apartment" VALUES ('3', '313', '2');
INSERT INTO "public"."apartment" VALUES ('3', '314', '1');
INSERT INTO "public"."apartment" VALUES ('3', '315', '2');
INSERT INTO "public"."apartment" VALUES ('3', '316', '1');
INSERT INTO "public"."apartment" VALUES ('3', '317', '3');
INSERT INTO "public"."apartment" VALUES ('3', '318', '2');
INSERT INTO "public"."apartment" VALUES ('3', '319', '3');
INSERT INTO "public"."apartment" VALUES ('3', '320', '1');
INSERT INTO "public"."apartment" VALUES ('3', '321', '1');
INSERT INTO "public"."apartment" VALUES ('3', '400', '2');
INSERT INTO "public"."apartment" VALUES ('3', '401', '1');
INSERT INTO "public"."apartment" VALUES ('3', '402', '3');
INSERT INTO "public"."apartment" VALUES ('3', '403', '1');
INSERT INTO "public"."apartment" VALUES ('3', '404', '1');
INSERT INTO "public"."apartment" VALUES ('3', '405', '3');
INSERT INTO "public"."apartment" VALUES ('3', '406', '3');
INSERT INTO "public"."apartment" VALUES ('3', '407', '2');
INSERT INTO "public"."apartment" VALUES ('3', '408', '1');
INSERT INTO "public"."apartment" VALUES ('3', '409', '3');
INSERT INTO "public"."apartment" VALUES ('3', '410', '1');
INSERT INTO "public"."apartment" VALUES ('3', '411', '3');
INSERT INTO "public"."apartment" VALUES ('3', '412', '2');
INSERT INTO "public"."apartment" VALUES ('3', '413', '3');
INSERT INTO "public"."apartment" VALUES ('3', '414', '3');
INSERT INTO "public"."apartment" VALUES ('3', '415', '3');
INSERT INTO "public"."apartment" VALUES ('3', '416', '3');
INSERT INTO "public"."apartment" VALUES ('3', '417', '1');
INSERT INTO "public"."apartment" VALUES ('3', '418', '2');
INSERT INTO "public"."apartment" VALUES ('3', '419', '2');
INSERT INTO "public"."apartment" VALUES ('3', '420', '3');
INSERT INTO "public"."apartment" VALUES ('3', '421', '2');
INSERT INTO "public"."apartment" VALUES ('4', '100', '1');
INSERT INTO "public"."apartment" VALUES ('4', '101', '3');
INSERT INTO "public"."apartment" VALUES ('4', '102', '3');
INSERT INTO "public"."apartment" VALUES ('4', '103', '3');
INSERT INTO "public"."apartment" VALUES ('4', '104', '1');
INSERT INTO "public"."apartment" VALUES ('4', '105', '3');
INSERT INTO "public"."apartment" VALUES ('4', '106', '2');
INSERT INTO "public"."apartment" VALUES ('4', '107', '2');
INSERT INTO "public"."apartment" VALUES ('4', '108', '1');
INSERT INTO "public"."apartment" VALUES ('4', '109', '1');
INSERT INTO "public"."apartment" VALUES ('4', '110', '3');
INSERT INTO "public"."apartment" VALUES ('4', '111', '3');
INSERT INTO "public"."apartment" VALUES ('4', '112', '2');
INSERT INTO "public"."apartment" VALUES ('4', '113', '3');
INSERT INTO "public"."apartment" VALUES ('4', '114', '2');
INSERT INTO "public"."apartment" VALUES ('4', '115', '2');
INSERT INTO "public"."apartment" VALUES ('4', '116', '2');
INSERT INTO "public"."apartment" VALUES ('4', '117', '2');
INSERT INTO "public"."apartment" VALUES ('4', '118', '2');
INSERT INTO "public"."apartment" VALUES ('4', '119', '3');
INSERT INTO "public"."apartment" VALUES ('4', '120', '2');
INSERT INTO "public"."apartment" VALUES ('4', '121', '1');
INSERT INTO "public"."apartment" VALUES ('4', '200', '1');
INSERT INTO "public"."apartment" VALUES ('4', '201', '2');
INSERT INTO "public"."apartment" VALUES ('4', '202', '3');
INSERT INTO "public"."apartment" VALUES ('4', '203', '3');
INSERT INTO "public"."apartment" VALUES ('4', '204', '3');
INSERT INTO "public"."apartment" VALUES ('4', '205', '3');
INSERT INTO "public"."apartment" VALUES ('4', '206', '3');
INSERT INTO "public"."apartment" VALUES ('4', '207', '2');
INSERT INTO "public"."apartment" VALUES ('4', '208', '3');
INSERT INTO "public"."apartment" VALUES ('4', '209', '1');
INSERT INTO "public"."apartment" VALUES ('4', '210', '1');
INSERT INTO "public"."apartment" VALUES ('4', '211', '2');
INSERT INTO "public"."apartment" VALUES ('4', '212', '2');
INSERT INTO "public"."apartment" VALUES ('4', '213', '3');
INSERT INTO "public"."apartment" VALUES ('4', '214', '1');
INSERT INTO "public"."apartment" VALUES ('4', '215', '3');
INSERT INTO "public"."apartment" VALUES ('4', '216', '1');
INSERT INTO "public"."apartment" VALUES ('4', '217', '1');
INSERT INTO "public"."apartment" VALUES ('4', '218', '1');
INSERT INTO "public"."apartment" VALUES ('4', '219', '2');
INSERT INTO "public"."apartment" VALUES ('4', '220', '2');
INSERT INTO "public"."apartment" VALUES ('4', '221', '3');
INSERT INTO "public"."apartment" VALUES ('4', '300', '1');
INSERT INTO "public"."apartment" VALUES ('4', '301', '1');
INSERT INTO "public"."apartment" VALUES ('4', '302', '1');
INSERT INTO "public"."apartment" VALUES ('4', '303', '3');
INSERT INTO "public"."apartment" VALUES ('4', '304', '3');
INSERT INTO "public"."apartment" VALUES ('4', '305', '2');
INSERT INTO "public"."apartment" VALUES ('4', '306', '1');
INSERT INTO "public"."apartment" VALUES ('4', '307', '2');
INSERT INTO "public"."apartment" VALUES ('4', '308', '3');
INSERT INTO "public"."apartment" VALUES ('4', '309', '2');
INSERT INTO "public"."apartment" VALUES ('4', '310', '3');
INSERT INTO "public"."apartment" VALUES ('4', '311', '2');
INSERT INTO "public"."apartment" VALUES ('4', '312', '2');
INSERT INTO "public"."apartment" VALUES ('4', '313', '2');
INSERT INTO "public"."apartment" VALUES ('4', '314', '1');
INSERT INTO "public"."apartment" VALUES ('4', '315', '3');
INSERT INTO "public"."apartment" VALUES ('4', '316', '1');
INSERT INTO "public"."apartment" VALUES ('4', '317', '1');
INSERT INTO "public"."apartment" VALUES ('4', '318', '3');
INSERT INTO "public"."apartment" VALUES ('4', '319', '3');
INSERT INTO "public"."apartment" VALUES ('4', '320', '1');
INSERT INTO "public"."apartment" VALUES ('4', '321', '3');
INSERT INTO "public"."apartment" VALUES ('4', '400', '1');
INSERT INTO "public"."apartment" VALUES ('4', '401', '3');
INSERT INTO "public"."apartment" VALUES ('4', '402', '1');
INSERT INTO "public"."apartment" VALUES ('4', '403', '2');
INSERT INTO "public"."apartment" VALUES ('4', '404', '3');
INSERT INTO "public"."apartment" VALUES ('4', '405', '3');
INSERT INTO "public"."apartment" VALUES ('4', '406', '3');
INSERT INTO "public"."apartment" VALUES ('4', '407', '2');
INSERT INTO "public"."apartment" VALUES ('4', '408', '1');
INSERT INTO "public"."apartment" VALUES ('4', '409', '3');
INSERT INTO "public"."apartment" VALUES ('4', '410', '2');
INSERT INTO "public"."apartment" VALUES ('4', '411', '3');
INSERT INTO "public"."apartment" VALUES ('4', '412', '3');
INSERT INTO "public"."apartment" VALUES ('4', '413', '3');
INSERT INTO "public"."apartment" VALUES ('4', '414', '3');
INSERT INTO "public"."apartment" VALUES ('4', '415', '3');
INSERT INTO "public"."apartment" VALUES ('4', '416', '3');
INSERT INTO "public"."apartment" VALUES ('4', '417', '2');
INSERT INTO "public"."apartment" VALUES ('4', '418', '3');
INSERT INTO "public"."apartment" VALUES ('4', '419', '1');
INSERT INTO "public"."apartment" VALUES ('4', '420', '3');
INSERT INTO "public"."apartment" VALUES ('4', '421', '1');

-- ----------------------------
-- Table structure for apartment_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."apartment_type" CASCADE;
CREATE TABLE "public"."apartment_type" (
"apartment_type_id" int4 DEFAULT nextval('apartment_type_apartment_type_id_seq'::regclass) NOT NULL,
"beds" int4,
"space" numeric(4,2),
"rooms" int4,
"monthly_cost" numeric(8,2),
"type_name" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of apartment_type
-- ----------------------------
INSERT INTO "public"."apartment_type" VALUES ('1', '1', '20.00', '1', '1000.00', 'singleBedRoom');
INSERT INTO "public"."apartment_type" VALUES ('2', '2', '30.00', '1', '1000.00', 'doubleBedsRoom');
INSERT INTO "public"."apartment_type" VALUES ('3', '5', '60.00', '3', '900.00', 'bigRoom');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS "public"."building" CASCADE;
CREATE TABLE "public"."building" (
"building_id" int4 DEFAULT nextval('building_building_id_seq'::regclass) NOT NULL,
"city" varchar(50) COLLATE "default" NOT NULL,
"street" varchar(100) COLLATE "default" NOT NULL,
"number_in_street" varchar(6) COLLATE "default" NOT NULL,
"zip_code" varchar(30) COLLATE "default",
"type_name" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO "public"."building" VALUES ('1', 'Innopolis', 'Universitetskaya', '1k1', '420500', 'Student hostel');
INSERT INTO "public"."building" VALUES ('2', 'Innopolis', 'Universitetskaya', '1k2', '420500', 'Student hostel');
INSERT INTO "public"."building" VALUES ('3', 'Innopolis', 'Universitetskaya', '1k3', '420500', 'Student hostel');
INSERT INTO "public"."building" VALUES ('4', 'Innopolis', 'Universitetskaya', '1k4', '420500', 'Student hostel');
INSERT INTO "public"."building" VALUES ('5', 'Innopolis', 'Universitetskaya', '1', '420500', 'University');

-- ----------------------------
-- Table structure for document
-- ----------------------------
DROP TABLE IF EXISTS "public"."document" CASCADE;
CREATE TABLE "public"."document" (
"document_id" int4 DEFAULT nextval('document_document_id_seq'::regclass) NOT NULL,
"person_id" int4 NOT NULL,
"update_to_date" timestamp(6) NOT NULL,
"document_type_id" int4 NOT NULL,
"image_path" varchar(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of document
-- ----------------------------
INSERT INTO "public"."document" VALUES ('1', '1', '2016-12-09 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00000\\hatedareth.jpg');
INSERT INTO "public"."document" VALUES ('2', '2', '2016-11-18 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00001\\tedour.jpg');
INSERT INTO "public"."document" VALUES ('3', '3', '2016-12-10 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00002\\erabutveeve.jpg');
INSERT INTO "public"."document" VALUES ('4', '4', '2016-11-13 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00003\\stnetha.jpg');
INSERT INTO "public"."document" VALUES ('5', '5', '2016-10-28 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00004\\haoneveed.jpg');
INSERT INTO "public"."document" VALUES ('6', '6', '2016-11-15 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00005\\inshohisas.jpg');
INSERT INTO "public"."document" VALUES ('7', '7', '2016-11-24 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00006\\shonenewa.jpg');
INSERT INTO "public"."document" VALUES ('8', '8', '2016-12-03 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00007\\ingstanbut.jpg');
INSERT INTO "public"."document" VALUES ('9', '9', '2016-12-09 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00008\\edwalend.jpg');
INSERT INTO "public"."document" VALUES ('10', '10', '2016-12-10 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00009\\terhereaor.jpg');
INSERT INTO "public"."document" VALUES ('11', '11', '2016-11-18 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00010\\tedanmein.jpg');
INSERT INTO "public"."document" VALUES ('12', '12', '2016-10-28 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00011\\nearhador.jpg');
INSERT INTO "public"."document" VALUES ('13', '13', '2016-12-10 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00012\\itst.jpg');
INSERT INTO "public"."document" VALUES ('14', '14', '2016-10-28 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00013\\atwaeayou5.jpg');
INSERT INTO "public"."document" VALUES ('15', '15', '2016-11-27 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00014\\hengtheto.jpg');
INSERT INTO "public"."document" VALUES ('16', '16', '2016-10-28 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00015\\entananyou.jpg');
INSERT INTO "public"."document" VALUES ('17', '17', '2016-10-30 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00016\\inyouleare292.jpg');
INSERT INTO "public"."document" VALUES ('18', '18', '2016-12-09 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00017\\hadandouve096.jpg');
INSERT INTO "public"."document" VALUES ('19', '19', '2016-12-08 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00018\\ithereyoutha.jpg');
INSERT INTO "public"."document" VALUES ('20', '20', '2016-12-10 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00019\\veme.jpg');
INSERT INTO "public"."document" VALUES ('21', '21', '2016-12-10 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00020\\enththitio.jpg');
INSERT INTO "public"."document" VALUES ('22', '22', '2016-11-22 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00021\\tioent214.jpg');
INSERT INTO "public"."document" VALUES ('23', '23', '2016-10-29 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00022\\andherat00.jpg');
INSERT INTO "public"."document" VALUES ('24', '24', '2016-11-30 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00023\\shotheasti.jpg');
INSERT INTO "public"."document" VALUES ('25', '25', '2016-10-31 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00024\\ithher121.jpg');
INSERT INTO "public"."document" VALUES ('26', '26', '2016-11-14 00:00:00', '1', '\\\\TestServer\\Data\\Pasports\\00025\\eahen22.jpg');

-- ----------------------------
-- Table structure for document_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."document_type" CASCADE;
CREATE TABLE "public"."document_type" (
"document_type_id" int4 DEFAULT nextval('document_type_document_type_id_seq'::regclass) NOT NULL,
"type_name" varchar(50) COLLATE "default" NOT NULL,
"identity_lvl" varchar(255) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of document_type
-- ----------------------------
INSERT INTO "public"."document_type" VALUES ('1', 'Pasport Russian Federation', '1');
INSERT INTO "public"."document_type" VALUES ('2', 'Driver''s license', '2');
INSERT INTO "public"."document_type" VALUES ('3', 'Military card', '3');
INSERT INTO "public"."document_type" VALUES ('4', 'Student card', '4');
INSERT INTO "public"."document_type" VALUES ('5', 'INN', '5');
INSERT INTO "public"."document_type" VALUES ('6', 'SNILS', '5');
INSERT INTO "public"."document_type" VALUES ('7', 'Employment history book', '5');
INSERT INTO "public"."document_type" VALUES ('8', 'Medical policy', '5');
INSERT INTO "public"."document_type" VALUES ('9', 'Gradebook', '5');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS "public"."employee" CASCADE;
CREATE TABLE "public"."employee" (
"person_id" int4 NOT NULL,
"salary" numeric(8,2) NOT NULL,
"employee_role_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO "public"."employee" VALUES ('21', '30000.00', '4');
INSERT INTO "public"."employee" VALUES ('22', '25000.00', '1');
INSERT INTO "public"."employee" VALUES ('23', '20000.00', '2');
INSERT INTO "public"."employee" VALUES ('24', '40000.00', '3');
INSERT INTO "public"."employee" VALUES ('25', '25000.00', '5');
INSERT INTO "public"."employee" VALUES ('26', '30000.00', '6');

-- ----------------------------
-- Table structure for employee_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."employee_role" CASCADE;
CREATE TABLE "public"."employee_role" (
"employee_role_id" int4 DEFAULT nextval('employee_role_employee_role_id_seq'::regclass) NOT NULL,
"role_name" varchar(50) COLLATE "default" NOT NULL,
"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of employee_role
-- ----------------------------
INSERT INTO "public"."employee_role" VALUES ('1', 'Security Guard', 'Full-time');
INSERT INTO "public"."employee_role" VALUES ('2', 'Cleaning service', 'Part-time');
INSERT INTO "public"."employee_role" VALUES ('3', 'Commandant', 'Full-time');
INSERT INTO "public"."employee_role" VALUES ('4', 'Chef', 'Full-time');
INSERT INTO "public"."employee_role" VALUES ('5', 'Cook', 'Full-time');
INSERT INTO "public"."employee_role" VALUES ('6', 'Administrator', 'Full-time');

-- ----------------------------
-- Table structure for entry_check_machine
-- ----------------------------
DROP TABLE IF EXISTS "public"."entry_check_machine" CASCADE;
CREATE TABLE "public"."entry_check_machine" (
"ecm_id" int4 DEFAULT nextval('entry_check_machine_ecm_id_seq'::regclass) NOT NULL,
"building_id" int4 NOT NULL,
"entry_permission_id" int4 NOT NULL,
"constraint_group_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of entry_check_machine
-- ----------------------------
INSERT INTO "public"."entry_check_machine" VALUES ('1', '1', '1', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('2', '1', '12', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('3', '1', '9', null);
INSERT INTO "public"."entry_check_machine" VALUES ('4', '1', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('5', '1', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('6', '1', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('7', '1', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('8', '2', '2', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('9', '2', '10', null);
INSERT INTO "public"."entry_check_machine" VALUES ('10', '2', '13', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('11', '2', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('12', '2', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('13', '2', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('14', '2', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('15', '3', '3', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('16', '3', '11', null);
INSERT INTO "public"."entry_check_machine" VALUES ('17', '3', '14', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('18', '3', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('19', '3', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('20', '3', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('21', '3', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('22', '4', '15', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('23', '4', '4', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('24', '4', '4', null);
INSERT INTO "public"."entry_check_machine" VALUES ('25', '4', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('26', '4', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('27', '4', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('28', '4', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('29', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('30', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('31', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('32', '5', '21', null);
INSERT INTO "public"."entry_check_machine" VALUES ('33', '5', '5', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('34', '5', '17', '1');
INSERT INTO "public"."entry_check_machine" VALUES ('35', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('36', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('37', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('38', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('39', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('40', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('41', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('42', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('43', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('44', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('45', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('46', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('47', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('48', '5', '6', null);
INSERT INTO "public"."entry_check_machine" VALUES ('49', '5', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('50', '5', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('51', '5', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('52', '5', '7', null);
INSERT INTO "public"."entry_check_machine" VALUES ('53', '1', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('61', '1', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('62', '1', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('63', '2', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('64', '2', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('65', '2', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('66', '3', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('67', '3', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('68', '4', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('69', '4', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('70', '4', '18', null);
INSERT INTO "public"."entry_check_machine" VALUES ('71', '1', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('72', '1', '21', null);
INSERT INTO "public"."entry_check_machine" VALUES ('73', '1', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('74', '2', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('75', '2', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('76', '2', '21', null);
INSERT INTO "public"."entry_check_machine" VALUES ('77', '3', '21', null);
INSERT INTO "public"."entry_check_machine" VALUES ('78', '3', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('79', '3', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('80', '4', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('81', '4', '21', null);
INSERT INTO "public"."entry_check_machine" VALUES ('82', '4', '19', null);
INSERT INTO "public"."entry_check_machine" VALUES ('83', '3', '18', null);

-- ----------------------------
-- Table structure for entry_permission
-- ----------------------------
DROP TABLE IF EXISTS "public"."entry_permission" CASCADE;
CREATE TABLE "public"."entry_permission" (
"entry_permission_id" int4 DEFAULT nextval('entry_permission_entry_permission_id_seq'::regclass) NOT NULL,
"permission_name" varchar(100) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of entry_permission
-- ----------------------------
INSERT INTO "public"."entry_permission" VALUES ('1', 'Student hostel 1 (main entrance)');
INSERT INTO "public"."entry_permission" VALUES ('2', 'Student hostel 2 (main entrance)');
INSERT INTO "public"."entry_permission" VALUES ('3', 'Student hostel 3 (main entrance)');
INSERT INTO "public"."entry_permission" VALUES ('4', 'Student hostel 4 (main entrance)');
INSERT INTO "public"."entry_permission" VALUES ('5', 'University (main entrance)');
INSERT INTO "public"."entry_permission" VALUES ('6', 'Teachers Office');
INSERT INTO "public"."entry_permission" VALUES ('7', 'Pantry');
INSERT INTO "public"."entry_permission" VALUES ('8', 'University classroom');
INSERT INTO "public"."entry_permission" VALUES ('9', 'Student hostel 1 (canteen)');
INSERT INTO "public"."entry_permission" VALUES ('10', 'Flyover (hostel 2 - hostel 3)');
INSERT INTO "public"."entry_permission" VALUES ('11', 'Flyover (hostel 3 - hostel 4)');
INSERT INTO "public"."entry_permission" VALUES ('12', 'Student hostel 1 (emergency exit)');
INSERT INTO "public"."entry_permission" VALUES ('13', 'Student hostel 2 (emergency exit)');
INSERT INTO "public"."entry_permission" VALUES ('14', 'Student hostel 3 (emergency exit)');
INSERT INTO "public"."entry_permission" VALUES ('15', 'Student hostel 4 (emergency exit)');
INSERT INTO "public"."entry_permission" VALUES ('17', 'University (emergency exit)');
INSERT INTO "public"."entry_permission" VALUES ('18', 'Laundry room');
INSERT INTO "public"."entry_permission" VALUES ('19', 'Stockroom');
INSERT INTO "public"."entry_permission" VALUES ('20', 'Flyover (hostel 1 - hostel 2)');
INSERT INTO "public"."entry_permission" VALUES ('21', 'Security room');
INSERT INTO "public"."entry_permission" VALUES ('22', 'Stockroom (canteen)');

-- ----------------------------
-- Table structure for entry_permission_set
-- ----------------------------
DROP TABLE IF EXISTS "public"."entry_permission_set" CASCADE;
CREATE TABLE "public"."entry_permission_set" (
"ep_set_id" int4 DEFAULT nextval('entry_permission_set_ep_set_id_seq'::regclass) NOT NULL,
"set_name" varchar(50) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of entry_permission_set
-- ----------------------------
INSERT INTO "public"."entry_permission_set" VALUES ('1', 'Base for Students');
INSERT INTO "public"."entry_permission_set" VALUES ('2', 'Hostel Administrator');
INSERT INTO "public"."entry_permission_set" VALUES ('3', 'Security Service');
INSERT INTO "public"."entry_permission_set" VALUES ('4', 'Base for Person');
INSERT INTO "public"."entry_permission_set" VALUES ('5', 'Base for Teachers');
INSERT INTO "public"."entry_permission_set" VALUES ('6', 'Canteen staff');
INSERT INTO "public"."entry_permission_set" VALUES ('7', 'Cleaning Service');

-- ----------------------------
-- Table structure for ep_set_has_ep
-- ----------------------------
DROP TABLE IF EXISTS "public"."ep_set_has_ep" CASCADE;
CREATE TABLE "public"."ep_set_has_ep" (
"entry_permission_id" int4 NOT NULL,
"ep_set_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ep_set_has_ep
-- ----------------------------
INSERT INTO "public"."ep_set_has_ep" VALUES ('1', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('2', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('3', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('4', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('5', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('6', '5');
INSERT INTO "public"."ep_set_has_ep" VALUES ('7', '2');
INSERT INTO "public"."ep_set_has_ep" VALUES ('7', '7');
INSERT INTO "public"."ep_set_has_ep" VALUES ('8', '1');
INSERT INTO "public"."ep_set_has_ep" VALUES ('9', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('10', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('11', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('12', '2');
INSERT INTO "public"."ep_set_has_ep" VALUES ('12', '3');
INSERT INTO "public"."ep_set_has_ep" VALUES ('13', '2');
INSERT INTO "public"."ep_set_has_ep" VALUES ('13', '3');
INSERT INTO "public"."ep_set_has_ep" VALUES ('14', '2');
INSERT INTO "public"."ep_set_has_ep" VALUES ('14', '3');
INSERT INTO "public"."ep_set_has_ep" VALUES ('15', '2');
INSERT INTO "public"."ep_set_has_ep" VALUES ('15', '3');
INSERT INTO "public"."ep_set_has_ep" VALUES ('17', '3');
INSERT INTO "public"."ep_set_has_ep" VALUES ('18', '1');
INSERT INTO "public"."ep_set_has_ep" VALUES ('19', '2');
INSERT INTO "public"."ep_set_has_ep" VALUES ('20', '4');
INSERT INTO "public"."ep_set_has_ep" VALUES ('21', '3');
INSERT INTO "public"."ep_set_has_ep" VALUES ('22', '6');

-- ----------------------------
-- Table structure for guest
-- ----------------------------
DROP TABLE IF EXISTS "public"."guest" CASCADE;
CREATE TABLE "public"."guest" (
"person_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of guest
-- ----------------------------
INSERT INTO "public"."guest" VALUES ('11');
INSERT INTO "public"."guest" VALUES ('12');
INSERT INTO "public"."guest" VALUES ('13');
INSERT INTO "public"."guest" VALUES ('14');
INSERT INTO "public"."guest" VALUES ('15');
INSERT INTO "public"."guest" VALUES ('16');
INSERT INTO "public"."guest" VALUES ('17');
INSERT INTO "public"."guest" VALUES ('18');
INSERT INTO "public"."guest" VALUES ('19');
INSERT INTO "public"."guest" VALUES ('20');

-- ----------------------------
-- Table structure for guest_to_person
-- ----------------------------
DROP TABLE IF EXISTS "public"."guest_to_person" CASCADE;
CREATE TABLE "public"."guest_to_person" (
"person_id" int4 NOT NULL,
"date_time_start" timestamp(6) NOT NULL,
"date_time_end" timestamp(6),
"guest_person_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of guest_to_person
-- ----------------------------
INSERT INTO "public"."guest_to_person" VALUES ('1', '2016-01-01 12:00:01', '2016-01-05 01:00:00', '11');
INSERT INTO "public"."guest_to_person" VALUES ('2', '2016-03-16 02:00:01', '2016-03-25 11:00:00', '12');
INSERT INTO "public"."guest_to_person" VALUES ('3', '2016-02-05 10:26:01', '2016-02-10 01:15:00', '13');
INSERT INTO "public"."guest_to_person" VALUES ('4', '2016-08-13 01:54:07', '2016-08-18 05:16:05', '14');
INSERT INTO "public"."guest_to_person" VALUES ('5', '2016-11-03 03:34:59', '2016-11-10 01:45:00', '15');

-- ----------------------------
-- Table structure for in_out
-- ----------------------------
DROP TABLE IF EXISTS "public"."in_out" CASCADE;
CREATE TABLE "public"."in_out" (
"person_id" int4 NOT NULL,
"ecm_id" int4 NOT NULL,
"direction" char(1) COLLATE "default" NOT NULL,
"date_time" timestamp(6) NOT NULL,
"accepted" bool NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of in_out
-- ----------------------------
INSERT INTO "public"."in_out" VALUES ('1', '1', 'o', '2016-09-02 09:26:33', 't');
INSERT INTO "public"."in_out" VALUES ('1', '1', 'o', '2016-10-22 06:59:38', 't');
INSERT INTO "public"."in_out" VALUES ('1', '1', 'o', '2016-11-19 00:59:39.758146', 't');
INSERT INTO "public"."in_out" VALUES ('1', '1', 'o', '2016-11-19 01:00:38.608803', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '1', 'i', '2016-11-19 01:00:51.649714', 't');
INSERT INTO "public"."in_out" VALUES ('1', '2', 'i', '2016-09-24 09:43:52', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '2', 'o', '2016-11-07 18:24:15', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '2', 'o', '2016-11-15 16:32:17', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '3', 'i', '2016-09-05 21:07:23', 't');
INSERT INTO "public"."in_out" VALUES ('1', '4', 'o', '2016-09-01 00:01:27', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '4', 'i', '2016-09-02 03:09:22', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '4', 'i', '2016-10-02 10:25:48', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '4', 'i', '2016-10-29 13:57:56', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '5', 'o', '2016-10-31 22:27:35', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '6', 'o', '2016-10-15 06:54:12', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '7', 'o', '2016-09-01 02:14:22', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '7', 'i', '2016-09-18 11:01:18', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '8', 'i', '2016-09-01 00:08:41', 't');
INSERT INTO "public"."in_out" VALUES ('1', '8', 'i', '2016-11-16 00:59:59', 't');
INSERT INTO "public"."in_out" VALUES ('1', '9', 'i', '2016-10-02 01:04:02', 't');
INSERT INTO "public"."in_out" VALUES ('1', '9', 'o', '2016-10-09 16:02:48', 't');
INSERT INTO "public"."in_out" VALUES ('1', '9', 'i', '2016-10-12 02:35:27', 't');
INSERT INTO "public"."in_out" VALUES ('1', '10', 'o', '2016-09-06 08:16:40', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '10', 'o', '2016-11-16 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '11', 'i', '2016-10-08 04:57:08', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '11', 'o', '2016-11-06 03:17:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '11', 'i', '2016-11-15 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '12', 'i', '2016-09-18 15:35:49', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '13', 'o', '2016-10-23 19:47:28', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '13', 'o', '2016-11-15 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '14', 'o', '2016-09-01 02:04:50', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '14', 'i', '2016-09-01 23:16:19', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '14', 'o', '2016-09-02 01:31:08', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '15', 'i', '2016-10-10 13:01:55', 't');
INSERT INTO "public"."in_out" VALUES ('1', '17', 'o', '2016-09-03 01:04:48', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '18', 'i', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '18', 'i', '2016-09-11 23:15:46', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '18', 'o', '2016-09-26 08:37:07', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '18', 'o', '2016-10-17 21:43:35', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '18', 'o', '2016-10-26 16:14:21', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '19', 'i', '2016-09-01 00:00:42', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '19', 'i', '2016-09-01 00:13:47', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '19', 'o', '2016-09-03 22:47:09', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '21', 'i', '2016-09-03 06:03:55', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '21', 'i', '2016-11-11 05:33:46', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '22', 'i', '2016-09-28 01:43:45', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '22', 'i', '2016-10-11 15:01:09', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '22', 'o', '2016-10-19 14:39:38', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '22', 'i', '2016-11-04 07:59:09', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '23', 'i', '2016-09-01 00:00:03', 't');
INSERT INTO "public"."in_out" VALUES ('1', '23', 'o', '2016-09-01 00:05:36', 't');
INSERT INTO "public"."in_out" VALUES ('1', '25', 'i', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '25', 'i', '2016-09-25 21:54:03', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '25', 'i', '2016-10-29 22:27:14', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '25', 'o', '2016-11-04 22:20:36', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '26', 'o', '2016-09-13 16:39:57', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '27', 'i', '2016-09-01 00:58:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '27', 'o', '2016-10-30 07:18:22', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '28', 'o', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '28', 'o', '2016-09-01 00:01:07', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '28', 'i', '2016-10-05 17:42:12', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '29', 'o', '2016-09-01 06:55:34', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '29', 'o', '2016-09-01 18:02:43', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '29', 'o', '2016-11-16 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '30', 'i', '2016-09-19 16:52:52', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '32', 'o', '2016-09-01 00:00:16', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '32', 'i', '2016-10-18 17:12:40', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '33', 'i', '2016-10-03 12:54:26', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '34', 'i', '2016-11-14 11:48:13', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '34', 'i', '2016-11-19 01:02:21.998257', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '34', 'o', '2016-11-19 01:02:29.322543', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '35', 'i', '2016-09-01 01:59:14', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '35', 'o', '2016-10-21 10:12:44', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '35', 'i', '2016-11-02 00:11:16', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '35', 'i', '2016-11-14 07:36:35', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '36', 'o', '2016-09-09 17:14:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '37', 'i', '2016-09-01 23:58:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '37', 'o', '2016-09-18 11:43:12', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '37', 'o', '2016-10-18 10:12:07', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '38', 'i', '2016-09-01 00:00:55', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '38', 'o', '2016-09-09 18:40:28', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '39', 'i', '2016-09-01 00:10:37', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '39', 'o', '2016-09-01 01:47:16', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '39', 'o', '2016-09-04 06:24:25', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '39', 'o', '2016-10-30 07:45:06', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '42', 'i', '2016-09-01 00:00:32', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '42', 'o', '2016-09-02 03:20:05', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '42', 'i', '2016-10-04 10:09:46', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '43', 'o', '2016-09-06 14:57:22', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '44', 'i', '2016-10-04 22:49:12', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '45', 'o', '2016-09-01 00:02:46', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '45', 'i', '2016-09-02 01:48:48', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '45', 'o', '2016-09-02 05:40:56', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '45', 'o', '2016-09-06 06:50:35', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '45', 'o', '2016-09-06 09:13:03', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '46', 'i', '2016-09-18 20:28:28', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '47', 'o', '2016-09-13 09:17:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '47', 'o', '2016-10-17 21:21:42', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '48', 'o', '2016-09-29 17:53:45', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '49', 'o', '2016-10-01 14:51:00', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '49', 'o', '2016-10-20 21:41:22', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '49', 'o', '2016-11-05 19:20:20', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '50', 'i', '2016-09-01 02:44:58', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '51', 'i', '2016-09-01 01:45:11', 'f');
INSERT INTO "public"."in_out" VALUES ('1', '52', 'i', '2016-11-05 06:46:02', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '2', 'o', '2016-10-21 05:38:29', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '2', 'o', '2016-11-16 23:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '3', 'i', '2016-11-16 00:01:01', 't');
INSERT INTO "public"."in_out" VALUES ('2', '4', 'i', '2016-09-04 09:12:57', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '4', 'o', '2016-10-19 10:07:03', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '4', 'o', '2016-11-15 14:05:11', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '5', 'o', '2016-09-30 19:46:40', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '5', 'o', '2016-10-15 04:34:43', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '5', 'o', '2016-10-20 14:37:05', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '5', 'i', '2016-10-22 12:27:35', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '5', 'o', '2016-11-16 23:58:01', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '6', 'o', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '6', 'i', '2016-10-31 05:55:56', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '6', 'i', '2016-11-03 13:41:33', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '7', 'i', '2016-09-15 03:11:29', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '7', 'o', '2016-09-25 10:15:14', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '7', 'o', '2016-10-02 20:07:39', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '9', 'o', '2016-09-05 13:29:37', 't');
INSERT INTO "public"."in_out" VALUES ('2', '9', 'o', '2016-09-26 21:39:06', 't');
INSERT INTO "public"."in_out" VALUES ('2', '10', 'o', '2016-09-05 07:18:52', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '10', 'o', '2016-09-08 17:07:29', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '11', 'o', '2016-09-01 00:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '11', 'i', '2016-09-06 02:08:18', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '11', 'o', '2016-11-04 05:01:55', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '12', 'o', '2016-09-07 10:36:35', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '12', 'o', '2016-10-16 08:47:16', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '12', 'i', '2016-10-23 10:58:23', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '12', 'o', '2016-11-16 22:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '13', 'o', '2016-09-22 19:45:52', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '13', 'o', '2016-10-26 14:28:51', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '14', 'o', '2016-09-01 00:00:27', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '14', 'o', '2016-09-02 00:47:07', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '14', 'i', '2016-10-03 02:06:42', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '14', 'o', '2016-10-09 05:18:43', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '17', 'o', '2016-09-01 05:18:49', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '17', 'i', '2016-11-03 22:45:11', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '18', 'i', '2016-09-01 00:00:54', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '18', 'i', '2016-09-01 22:36:19', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '19', 'i', '2016-09-01 00:00:26', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '19', 'i', '2016-09-01 07:09:09', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '19', 'i', '2016-09-01 23:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '19', 'i', '2016-10-31 13:33:53', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '20', 'o', '2016-09-01 00:00:07', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '20', 'i', '2016-09-27 08:33:59', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '20', 'o', '2016-10-16 10:20:12', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '20', 'i', '2016-11-12 22:59:13', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '21', 'i', '2016-11-16 00:27:44', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '23', 'o', '2016-09-24 09:04:17', 't');
INSERT INTO "public"."in_out" VALUES ('2', '23', 'i', '2016-09-26 14:12:35', 't');
INSERT INTO "public"."in_out" VALUES ('2', '23', 'o', '2016-11-16 23:00:01', 't');
INSERT INTO "public"."in_out" VALUES ('2', '25', 'o', '2016-10-07 14:40:24', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '25', 'o', '2016-11-04 20:57:28', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '26', 'i', '2016-09-11 12:27:48', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '26', 'i', '2016-10-14 18:11:27', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '26', 'o', '2016-10-27 23:24:25', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '27', 'i', '2016-09-01 00:01:29', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '27', 'o', '2016-09-01 00:10:54', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '27', 'i', '2016-09-02 03:45:08', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '28', 'o', '2016-09-01 01:15:02', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '29', 'i', '2016-09-01 01:08:40', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '29', 'i', '2016-09-22 00:12:42', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '29', 'i', '2016-10-22 02:14:55', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '29', 'i', '2016-10-22 03:27:18', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '31', 'o', '2016-09-01 00:00:35', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '31', 'i', '2016-09-08 08:15:02', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '31', 'i', '2016-10-09 21:23:12', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '32', 'o', '2016-09-01 00:05:14', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '32', 'o', '2016-10-19 14:11:25', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '32', 'o', '2016-11-08 23:16:51', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '32', 'i', '2016-11-15 05:04:51', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '33', 'i', '2016-09-03 17:31:28', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '33', 'o', '2016-10-16 08:52:24', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '35', 'i', '2016-09-02 03:53:16', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '35', 'i', '2016-09-11 22:43:00', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '35', 'i', '2016-11-16 00:26:30', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '36', 'o', '2016-09-01 00:00:09', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '36', 'i', '2016-10-08 20:58:40', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '37', 'o', '2016-09-08 07:33:23', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '38', 'o', '2016-09-14 09:09:59', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '39', 'o', '2016-11-14 08:26:45', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '40', 'o', '2016-09-25 15:14:54', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '40', 'i', '2016-10-11 00:15:41', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '40', 'i', '2016-11-14 13:52:27', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '41', 'o', '2016-09-01 00:00:07', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '41', 'i', '2016-11-07 07:19:26', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '42', 'i', '2016-09-01 18:43:26', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '43', 'i', '2016-10-04 21:24:14', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '44', 'o', '2016-09-04 07:04:42', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '44', 'o', '2016-10-08 17:51:47', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '44', 'o', '2016-10-22 09:48:20', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '46', 'o', '2016-09-01 01:32:39', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '46', 'i', '2016-09-10 18:00:26', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '46', 'o', '2016-10-10 05:19:58', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '46', 'o', '2016-10-20 09:36:03', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '47', 'o', '2016-10-30 07:09:21', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '47', 'o', '2016-11-02 00:26:07', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '50', 'o', '2016-09-03 16:04:12', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '51', 'o', '2016-09-01 00:53:56', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '52', 'i', '2016-09-01 00:01:01', 'f');
INSERT INTO "public"."in_out" VALUES ('2', '52', 'o', '2016-10-22 16:31:02', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '1', 'i', '2016-09-01 00:03:40', 't');
INSERT INTO "public"."in_out" VALUES ('3', '1', 'o', '2016-09-07 17:24:00', 't');
INSERT INTO "public"."in_out" VALUES ('3', '1', 'i', '2016-10-09 20:56:14', 't');
INSERT INTO "public"."in_out" VALUES ('3', '1', 'o', '2016-11-11 15:33:51', 't');
INSERT INTO "public"."in_out" VALUES ('3', '3', 'i', '2016-09-12 19:31:19', 't');
INSERT INTO "public"."in_out" VALUES ('3', '4', 'i', '2016-09-01 00:00:52', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '4', 'o', '2016-09-01 02:43:14', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '5', 'o', '2016-11-12 14:18:25', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '6', 'o', '2016-11-04 07:10:39', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '7', 'o', '2016-09-10 20:22:45', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '7', 'i', '2016-10-20 15:41:09', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '8', 'i', '2016-09-01 21:43:02', 't');
INSERT INTO "public"."in_out" VALUES ('3', '8', 'o', '2016-09-03 17:39:11', 't');
INSERT INTO "public"."in_out" VALUES ('3', '8', 'i', '2016-10-16 00:49:51', 't');
INSERT INTO "public"."in_out" VALUES ('3', '8', 'o', '2016-11-02 02:02:37', 't');
INSERT INTO "public"."in_out" VALUES ('3', '9', 'o', '2016-09-10 19:32:08', 't');
INSERT INTO "public"."in_out" VALUES ('3', '9', 'i', '2016-10-17 03:20:23', 't');
INSERT INTO "public"."in_out" VALUES ('3', '9', 'i', '2016-11-15 10:52:39', 't');
INSERT INTO "public"."in_out" VALUES ('3', '10', 'i', '2016-09-06 22:19:26', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '10', 'i', '2016-11-06 13:13:50', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '11', 'i', '2016-10-26 12:54:05', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '12', 'o', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '12', 'o', '2016-09-01 01:48:06', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '13', 'i', '2016-09-17 19:58:12', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '14', 'o', '2016-09-02 03:39:58', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '14', 'o', '2016-09-26 19:13:42', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '14', 'i', '2016-10-26 08:56:15', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '15', 'i', '2016-09-06 23:46:18', 't');
INSERT INTO "public"."in_out" VALUES ('3', '15', 'i', '2016-09-09 17:13:55', 't');
INSERT INTO "public"."in_out" VALUES ('3', '15', 'o', '2016-09-17 07:56:31', 't');
INSERT INTO "public"."in_out" VALUES ('3', '15', 'i', '2016-11-04 17:22:42', 't');
INSERT INTO "public"."in_out" VALUES ('3', '16', 'o', '2016-09-01 02:25:05', 't');
INSERT INTO "public"."in_out" VALUES ('3', '17', 'i', '2016-10-01 16:15:44', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '18', 'o', '2016-09-01 00:14:41', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '18', 'i', '2016-10-31 10:06:22', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '19', 'o', '2016-09-09 18:34:35', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '19', 'i', '2016-10-15 03:21:56', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '19', 'i', '2016-10-31 13:01:51', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '20', 'i', '2016-09-01 00:01:35', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '20', 'i', '2016-09-01 10:49:25', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '21', 'i', '2016-09-01 00:01:11', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '21', 'i', '2016-09-10 15:29:42', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '23', 'o', '2016-09-01 02:41:40', 't');
INSERT INTO "public"."in_out" VALUES ('3', '23', 'o', '2016-10-10 05:24:09', 't');
INSERT INTO "public"."in_out" VALUES ('3', '24', 'o', '2016-09-01 17:15:01', 't');
INSERT INTO "public"."in_out" VALUES ('3', '24', 'o', '2016-11-14 06:52:45', 't');
INSERT INTO "public"."in_out" VALUES ('3', '24', 'o', '2016-11-16 00:26:30', 't');
INSERT INTO "public"."in_out" VALUES ('3', '25', 'o', '2016-09-27 11:54:52', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '26', 'i', '2016-09-01 00:21:11', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '26', 'i', '2016-09-01 00:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '28', 'i', '2016-10-31 05:32:45', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '28', 'o', '2016-11-02 10:00:41', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '29', 'i', '2016-09-13 22:58:49', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '29', 'o', '2016-10-21 09:21:03', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '29', 'o', '2016-11-09 17:33:03', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '30', 'i', '2016-09-01 00:00:48', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '30', 'o', '2016-09-15 12:35:06', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '31', 'o', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '31', 'i', '2016-09-29 19:39:51', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '31', 'o', '2016-11-09 15:12:05', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '31', 'i', '2016-11-14 10:35:21', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '32', 'i', '2016-09-01 23:01:00', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '32', 'o', '2016-11-11 17:46:41', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '33', 'i', '2016-09-22 23:34:54', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '33', 'i', '2016-11-04 19:28:00', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '34', 'o', '2016-10-03 14:33:33', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '35', 'o', '2016-11-15 20:38:27', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '36', 'i', '2016-09-01 12:24:51', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '37', 'i', '2016-09-01 15:47:33', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '37', 'o', '2016-09-01 21:24:39', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '37', 'o', '2016-11-03 16:47:05', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '38', 'o', '2016-09-01 00:01:36', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '38', 'o', '2016-10-26 18:30:49', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '39', 'i', '2016-09-23 21:47:11', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '40', 'o', '2016-09-11 23:34:34', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '40', 'o', '2016-10-05 09:04:49', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '40', 'i', '2016-10-24 10:50:25', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '41', 'i', '2016-09-28 19:10:24', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '42', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '43', 'i', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '43', 'o', '2016-09-01 01:52:34', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '44', 'i', '2016-09-14 22:44:39', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '44', 'o', '2016-09-24 20:21:28', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '44', 'i', '2016-10-28 05:51:59', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '45', 'o', '2016-09-10 14:00:57', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '46', 'i', '2016-09-01 22:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '46', 'i', '2016-11-02 04:58:34', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '47', 'o', '2016-11-01 19:01:54', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '48', 'i', '2016-09-01 00:05:54', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '48', 'i', '2016-09-05 07:06:36', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '48', 'i', '2016-10-14 04:08:15', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '48', 'i', '2016-10-19 10:38:19', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '49', 'i', '2016-09-05 05:49:06', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '49', 'o', '2016-10-26 08:00:37', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '49', 'i', '2016-10-30 06:47:59', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '50', 'o', '2016-09-13 14:12:59', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '50', 'o', '2016-10-14 16:16:13', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '50', 'o', '2016-11-10 01:37:01', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '50', 'i', '2016-11-13 20:35:19', 'f');
INSERT INTO "public"."in_out" VALUES ('3', '52', 'i', '2016-09-29 21:47:52', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '1', 'o', '2016-09-01 00:00:08', 't');
INSERT INTO "public"."in_out" VALUES ('4', '1', 'o', '2016-11-08 07:23:20', 't');
INSERT INTO "public"."in_out" VALUES ('4', '2', 'o', '2016-10-10 19:15:40', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '3', 'o', '2016-09-01 00:00:07', 't');
INSERT INTO "public"."in_out" VALUES ('4', '3', 'o', '2016-09-10 21:23:13', 't');
INSERT INTO "public"."in_out" VALUES ('4', '3', 'o', '2016-10-04 08:13:17', 't');
INSERT INTO "public"."in_out" VALUES ('4', '4', 'o', '2016-10-05 09:08:55', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '5', 'i', '2016-09-01 00:00:56', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '5', 'i', '2016-09-01 00:01:36', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '5', 'i', '2016-10-23 02:12:20', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '5', 'i', '2016-11-12 22:42:43', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '6', 'i', '2016-09-30 18:39:53', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '6', 'o', '2016-11-02 04:38:16', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '7', 'i', '2016-09-01 00:03:21', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '7', 'i', '2016-09-01 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '7', 'o', '2016-10-12 07:48:13', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '8', 'i', '2016-09-01 00:02:32', 't');
INSERT INTO "public"."in_out" VALUES ('4', '9', 'i', '2016-09-01 00:08:59', 't');
INSERT INTO "public"."in_out" VALUES ('4', '9', 'o', '2016-09-30 14:55:53', 't');
INSERT INTO "public"."in_out" VALUES ('4', '10', 'i', '2016-09-01 00:00:22', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '10', 'o', '2016-09-01 00:01:03', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '10', 'i', '2016-09-10 01:30:14', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '10', 'o', '2016-10-26 05:23:49', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '10', 'o', '2016-11-01 14:16:38', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '11', 'i', '2016-09-01 00:00:53', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '11', 'i', '2016-09-28 11:11:42', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '14', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '15', 'o', '2016-10-15 12:11:59', 't');
INSERT INTO "public"."in_out" VALUES ('4', '16', 'o', '2016-11-06 14:04:12', 't');
INSERT INTO "public"."in_out" VALUES ('4', '17', 'o', '2016-10-17 09:55:00', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '17', 'o', '2016-11-12 20:50:00', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '19', 'o', '2016-09-09 22:17:04', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '19', 'o', '2016-09-30 19:45:29', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '20', 'i', '2016-10-13 18:22:30', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '20', 'o', '2016-10-26 02:10:48', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '20', 'o', '2016-11-13 12:56:42', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '21', 'i', '2016-11-16 17:10:18', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '22', 'i', '2016-11-02 05:05:50', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '22', 'i', '2016-11-16 00:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '23', 'i', '2016-09-01 00:00:05', 't');
INSERT INTO "public"."in_out" VALUES ('4', '23', 'o', '2016-09-01 19:25:09', 't');
INSERT INTO "public"."in_out" VALUES ('4', '23', 'i', '2016-09-03 11:40:10', 't');
INSERT INTO "public"."in_out" VALUES ('4', '23', 'i', '2016-10-29 04:58:53', 't');
INSERT INTO "public"."in_out" VALUES ('4', '24', 'i', '2016-09-01 00:00:08', 't');
INSERT INTO "public"."in_out" VALUES ('4', '24', 'o', '2016-09-07 12:36:30', 't');
INSERT INTO "public"."in_out" VALUES ('4', '24', 'o', '2016-09-28 07:50:35', 't');
INSERT INTO "public"."in_out" VALUES ('4', '25', 'i', '2016-10-03 14:02:19', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '25', 'i', '2016-11-02 11:32:00', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '25', 'o', '2016-11-10 18:34:39', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '27', 'o', '2016-09-01 00:00:07', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '27', 'o', '2016-09-01 00:00:30', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '29', 'i', '2016-09-01 00:58:01', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '29', 'i', '2016-09-10 06:16:22', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '30', 'i', '2016-09-18 21:12:38', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '30', 'o', '2016-11-11 07:32:50', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '31', 'o', '2016-09-01 00:58:37', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '31', 'o', '2016-09-05 17:01:18', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '31', 'i', '2016-10-23 18:16:01', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '31', 'o', '2016-11-13 09:37:12', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '32', 'o', '2016-10-11 18:17:23', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '33', 'i', '2016-09-01 00:00:05', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '34', 'o', '2016-09-19 02:17:02', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '34', 'o', '2016-10-09 01:09:31', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '34', 'o', '2016-10-24 22:44:39', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '34', 'i', '2016-11-16 22:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '35', 'i', '2016-09-09 18:01:56', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '35', 'o', '2016-10-08 21:18:13', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '36', 'i', '2016-10-06 08:06:41', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '36', 'o', '2016-10-13 05:38:18', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '36', 'o', '2016-10-19 04:10:10', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '36', 'o', '2016-11-13 22:35:08', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '37', 'o', '2016-10-01 23:19:07', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '37', 'i', '2016-10-26 14:35:45', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '39', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '39', 'o', '2016-09-01 00:14:51', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '39', 'i', '2016-10-16 23:03:02', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '40', 'i', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '41', 'i', '2016-09-07 09:58:00', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '43', 'o', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '43', 'i', '2016-09-07 00:37:09', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '43', 'o', '2016-10-05 13:43:55', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '45', 'i', '2016-09-01 00:00:47', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '45', 'i', '2016-09-01 01:25:33', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '45', 'i', '2016-09-03 03:48:50', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '47', 'i', '2016-09-10 13:10:46', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '47', 'i', '2016-09-22 21:21:20', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '47', 'i', '2016-10-05 17:49:57', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '48', 'i', '2016-09-01 00:00:32', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '48', 'o', '2016-09-24 06:14:55', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '48', 'o', '2016-11-12 11:03:03', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '49', 'o', '2016-09-29 06:36:56', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '49', 'i', '2016-11-14 13:31:58', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '50', 'i', '2016-10-12 06:24:36', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '51', 'o', '2016-09-01 02:32:45', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '51', 'o', '2016-09-01 23:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '51', 'i', '2016-09-08 13:44:28', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '51', 'i', '2016-09-14 04:30:22', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '51', 'o', '2016-10-04 08:42:59', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '51', 'o', '2016-10-24 23:04:02', 'f');
INSERT INTO "public"."in_out" VALUES ('4', '52', 'o', '2016-09-01 00:14:02', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '1', 'o', '2016-09-01 23:01:59', 't');
INSERT INTO "public"."in_out" VALUES ('5', '1', 'o', '2016-09-07 01:43:21', 't');
INSERT INTO "public"."in_out" VALUES ('5', '1', 'o', '2016-09-24 17:29:02', 't');
INSERT INTO "public"."in_out" VALUES ('5', '2', 'i', '2016-09-30 16:59:11', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '2', 'i', '2016-10-21 20:58:20', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '4', 'o', '2016-09-01 00:11:24', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '4', 'o', '2016-09-01 00:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '6', 'i', '2016-10-29 00:17:33', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '7', 'o', '2016-11-07 07:55:04', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '8', 'i', '2016-09-01 22:59:40', 't');
INSERT INTO "public"."in_out" VALUES ('5', '8', 'o', '2016-09-22 20:47:54', 't');
INSERT INTO "public"."in_out" VALUES ('5', '9', 'i', '2016-09-01 09:50:33', 't');
INSERT INTO "public"."in_out" VALUES ('5', '9', 'i', '2016-10-17 17:02:14', 't');
INSERT INTO "public"."in_out" VALUES ('5', '9', 'i', '2016-10-20 20:32:24', 't');
INSERT INTO "public"."in_out" VALUES ('5', '10', 'i', '2016-10-20 12:42:43', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '12', 'o', '2016-09-01 02:08:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '12', 'i', '2016-09-01 20:54:28', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '13', 'i', '2016-10-31 12:59:20', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '15', 'i', '2016-09-23 10:59:14', 't');
INSERT INTO "public"."in_out" VALUES ('5', '15', 'i', '2016-10-13 08:40:39', 't');
INSERT INTO "public"."in_out" VALUES ('5', '15', 'o', '2016-10-16 18:56:01', 't');
INSERT INTO "public"."in_out" VALUES ('5', '16', 'i', '2016-09-01 00:01:06', 't');
INSERT INTO "public"."in_out" VALUES ('5', '16', 'o', '2016-10-10 08:21:53', 't');
INSERT INTO "public"."in_out" VALUES ('5', '16', 'i', '2016-10-18 19:02:59', 't');
INSERT INTO "public"."in_out" VALUES ('5', '18', 'o', '2016-09-09 16:54:03', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '18', 'i', '2016-09-21 01:15:38', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '18', 'o', '2016-10-19 11:27:35', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '18', 'o', '2016-11-16 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '19', 'o', '2016-09-01 22:04:24', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '19', 'i', '2016-09-08 06:08:21', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '19', 'o', '2016-10-09 03:30:33', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '20', 'i', '2016-09-01 01:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '20', 'i', '2016-09-07 10:01:43', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '20', 'i', '2016-10-17 07:04:38', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '21', 'o', '2016-09-01 01:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '22', 'o', '2016-09-02 05:49:12', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '22', 'i', '2016-10-25 13:33:21', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '22', 'o', '2016-11-16 01:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '23', 'i', '2016-09-03 04:29:48', 't');
INSERT INTO "public"."in_out" VALUES ('5', '23', 'i', '2016-09-08 05:38:51', 't');
INSERT INTO "public"."in_out" VALUES ('5', '24', 'i', '2016-09-07 07:02:17', 't');
INSERT INTO "public"."in_out" VALUES ('5', '24', 'o', '2016-09-21 04:18:17', 't');
INSERT INTO "public"."in_out" VALUES ('5', '24', 'i', '2016-09-24 01:04:43', 't');
INSERT INTO "public"."in_out" VALUES ('5', '25', 'i', '2016-09-01 00:00:05', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '25', 'i', '2016-09-02 13:13:44', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '25', 'o', '2016-09-22 11:21:50', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '25', 'i', '2016-11-02 07:32:11', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '27', 'i', '2016-09-01 05:23:16', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '27', 'o', '2016-09-13 03:16:24', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '27', 'i', '2016-10-03 17:19:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '27', 'o', '2016-10-12 20:36:04', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '28', 'i', '2016-09-01 00:01:13', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '28', 'i', '2016-09-01 00:01:27', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '28', 'i', '2016-09-01 14:42:13', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '29', 'o', '2016-09-01 00:05:36', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '29', 'o', '2016-09-27 11:10:12', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '30', 'i', '2016-09-03 03:28:24', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '31', 'o', '2016-10-01 07:48:42', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '31', 'i', '2016-11-07 16:20:34', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '32', 'o', '2016-09-01 01:13:13', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '32', 'o', '2016-09-01 02:24:46', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '32', 'o', '2016-09-07 22:26:23', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '33', 'o', '2016-09-19 05:57:24', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '33', 'o', '2016-11-09 00:58:32', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '34', 'o', '2016-10-11 04:38:16', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '34', 'o', '2016-10-21 10:08:23', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '35', 'i', '2016-09-02 00:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '36', 'o', '2016-10-13 22:52:09', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '36', 'i', '2016-11-16 00:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '37', 'i', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '38', 'i', '2016-09-01 02:33:06', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '38', 'i', '2016-09-01 03:01:47', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '38', 'i', '2016-09-28 14:05:06', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '38', 'i', '2016-10-29 08:36:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '38', 'o', '2016-11-11 12:59:15', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '39', 'o', '2016-10-02 06:40:16', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '39', 'o', '2016-11-16 00:58:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '40', 'i', '2016-09-01 00:00:50', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '41', 'i', '2016-10-23 13:44:17', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '42', 'o', '2016-09-01 01:10:03', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '42', 'o', '2016-09-04 22:26:53', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '43', 'o', '2016-09-01 00:05:06', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '43', 'o', '2016-09-12 08:04:01', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '43', 'i', '2016-10-05 05:18:27', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '44', 'o', '2016-09-01 00:00:33', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '44', 'o', '2016-09-11 15:16:24', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '44', 'i', '2016-09-21 09:20:07', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '45', 'o', '2016-10-04 19:11:48', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '45', 'i', '2016-11-05 02:36:54', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '46', 'i', '2016-09-01 16:26:14', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '47', 'o', '2016-09-04 02:01:44', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '47', 'o', '2016-09-18 22:43:11', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '49', 'i', '2016-09-01 00:13:31', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '49', 'o', '2016-09-01 18:31:54', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '49', 'o', '2016-10-22 09:37:34', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '50', 'i', '2016-09-01 02:00:07', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '50', 'i', '2016-11-01 15:38:50', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '51', 'o', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '51', 'o', '2016-09-12 04:46:53', 'f');
INSERT INTO "public"."in_out" VALUES ('5', '51', 'o', '2016-10-16 02:24:40', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '1', 'i', '2016-09-01 00:03:52', 't');
INSERT INTO "public"."in_out" VALUES ('6', '1', 'o', '2016-09-01 00:08:53', 't');
INSERT INTO "public"."in_out" VALUES ('6', '1', 'o', '2016-09-01 01:13:52', 't');
INSERT INTO "public"."in_out" VALUES ('6', '1', 'i', '2016-09-10 17:50:24', 't');
INSERT INTO "public"."in_out" VALUES ('6', '2', 'o', '2016-09-08 03:26:02', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '2', 'o', '2016-09-11 09:45:52', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '2', 'i', '2016-09-28 09:56:57', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '3', 'i', '2016-09-01 10:29:05', 't');
INSERT INTO "public"."in_out" VALUES ('6', '3', 'o', '2016-09-01 22:59:01', 't');
INSERT INTO "public"."in_out" VALUES ('6', '3', 'o', '2016-09-22 11:56:26', 't');
INSERT INTO "public"."in_out" VALUES ('6', '4', 'o', '2016-10-22 18:53:01', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '6', 'i', '2016-09-01 01:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '6', 'o', '2016-09-29 13:03:37', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '6', 'o', '2016-10-04 23:24:10', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '6', 'i', '2016-11-10 06:58:42', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '7', 'o', '2016-09-01 00:00:21', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '7', 'i', '2016-11-11 16:15:26', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '8', 'i', '2016-09-14 04:37:22', 't');
INSERT INTO "public"."in_out" VALUES ('6', '10', 'i', '2016-10-09 04:10:30', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '10', 'o', '2016-10-09 04:23:42', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '11', 'o', '2016-09-06 03:20:19', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '11', 'o', '2016-09-08 14:57:30', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '11', 'i', '2016-09-10 01:04:23', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '12', 'o', '2016-09-01 00:10:25', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '12', 'i', '2016-09-09 15:55:26', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '12', 'i', '2016-10-27 03:53:52', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '13', 'o', '2016-09-05 15:34:50', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '13', 'o', '2016-09-09 01:21:20', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '13', 'i', '2016-10-08 23:56:00', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '14', 'i', '2016-09-01 00:11:57', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '14', 'o', '2016-09-05 11:48:05', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '14', 'i', '2016-09-26 00:20:25', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '15', 'i', '2016-09-01 00:52:55', 't');
INSERT INTO "public"."in_out" VALUES ('6', '15', 'o', '2016-09-20 09:39:42', 't');
INSERT INTO "public"."in_out" VALUES ('6', '16', 'i', '2016-09-01 00:00:53', 't');
INSERT INTO "public"."in_out" VALUES ('6', '16', 'i', '2016-09-01 01:51:56', 't');
INSERT INTO "public"."in_out" VALUES ('6', '16', 'i', '2016-09-19 00:07:34', 't');
INSERT INTO "public"."in_out" VALUES ('6', '16', 'i', '2016-09-24 12:07:48', 't');
INSERT INTO "public"."in_out" VALUES ('6', '16', 'i', '2016-11-06 03:32:34', 't');
INSERT INTO "public"."in_out" VALUES ('6', '17', 'i', '2016-09-01 00:00:48', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '17', 'o', '2016-09-15 12:02:24', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '17', 'o', '2016-10-05 23:55:45', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '17', 'i', '2016-10-06 04:43:32', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '17', 'o', '2016-10-09 19:02:41', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '18', 'o', '2016-09-01 00:14:20', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '18', 'i', '2016-10-29 16:32:57', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '20', 'i', '2016-09-01 03:50:53', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '20', 'i', '2016-09-19 16:36:15', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '20', 'i', '2016-10-18 20:37:37', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '21', 'i', '2016-09-29 04:09:30', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '21', 'o', '2016-10-06 13:57:48', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '21', 'o', '2016-10-26 17:24:16', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '22', 'o', '2016-10-26 12:48:17', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '22', 'i', '2016-11-02 04:13:24', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '23', 'o', '2016-09-11 08:06:41', 't');
INSERT INTO "public"."in_out" VALUES ('6', '24', 'i', '2016-09-01 23:04:11', 't');
INSERT INTO "public"."in_out" VALUES ('6', '24', 'o', '2016-09-19 13:33:08', 't');
INSERT INTO "public"."in_out" VALUES ('6', '26', 'o', '2016-09-01 00:05:25', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '26', 'i', '2016-09-01 23:01:01', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '27', 'o', '2016-10-16 03:59:11', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '29', 'i', '2016-09-01 00:06:49', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '30', 'o', '2016-09-22 07:06:35', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '30', 'o', '2016-10-15 19:51:13', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '30', 'o', '2016-11-03 10:29:00', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '31', 'i', '2016-09-01 02:12:18', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '32', 'o', '2016-11-04 22:53:15', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '33', 'o', '2016-10-07 04:50:54', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '33', 'i', '2016-11-14 04:37:56', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '34', 'o', '2016-10-13 18:55:32', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '36', 'i', '2016-09-26 03:59:27', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '36', 'i', '2016-11-16 23:01:00', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '38', 'i', '2016-09-01 00:01:13', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '38', 'o', '2016-09-01 00:11:59', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '39', 'o', '2016-09-09 05:58:58', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '39', 'o', '2016-09-16 03:47:15', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '39', 'i', '2016-11-03 19:40:29', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '40', 'i', '2016-09-08 10:21:06', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '41', 'o', '2016-09-01 00:01:18', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '42', 'i', '2016-09-01 00:00:17', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '42', 'o', '2016-09-01 23:58:01', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '43', 'o', '2016-09-01 01:11:18', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '43', 'o', '2016-10-03 06:57:55', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '44', 'i', '2016-09-01 00:09:32', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '45', 'o', '2016-09-14 17:57:48', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '46', 'i', '2016-11-16 10:49:43', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '47', 'i', '2016-09-01 20:01:59', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '47', 'o', '2016-09-06 18:27:22', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '47', 'i', '2016-11-16 22:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '48', 'o', '2016-09-01 00:00:05', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '48', 'o', '2016-09-03 09:21:47', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '48', 'o', '2016-10-02 02:18:39', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '48', 'o', '2016-10-12 19:50:19', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '49', 'i', '2016-09-07 22:32:05', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '49', 'i', '2016-09-12 13:15:59', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '49', 'i', '2016-11-12 05:13:36', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '50', 'i', '2016-09-01 00:05:34', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '50', 'i', '2016-09-13 07:40:38', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '51', 'i', '2016-09-01 00:02:08', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '52', 'o', '2016-09-01 00:00:58', 'f');
INSERT INTO "public"."in_out" VALUES ('6', '52', 'o', '2016-09-01 21:14:56', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '2', 'o', '2016-09-01 00:00:22', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '2', 'i', '2016-09-01 02:05:45', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '3', 'i', '2016-09-01 00:00:04', 't');
INSERT INTO "public"."in_out" VALUES ('7', '3', 'o', '2016-09-01 00:00:50', 't');
INSERT INTO "public"."in_out" VALUES ('7', '3', 'o', '2016-09-01 23:00:00', 't');
INSERT INTO "public"."in_out" VALUES ('7', '3', 'i', '2016-09-06 01:55:19', 't');
INSERT INTO "public"."in_out" VALUES ('7', '3', 'o', '2016-11-13 13:03:47', 't');
INSERT INTO "public"."in_out" VALUES ('7', '4', 'i', '2016-09-01 00:00:04', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '4', 'i', '2016-09-14 02:12:02', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '5', 'i', '2016-09-01 01:51:38', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '5', 'i', '2016-09-03 11:53:00', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '5', 'i', '2016-10-19 23:11:39', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '5', 'i', '2016-11-05 20:48:39', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '6', 'o', '2016-11-15 01:18:55', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '7', 'o', '2016-09-14 05:05:45', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '7', 'o', '2016-10-13 08:26:04', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '7', 'i', '2016-11-09 22:49:03', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '8', 'i', '2016-09-01 00:11:47', 't');
INSERT INTO "public"."in_out" VALUES ('7', '8', 'i', '2016-09-18 14:45:18', 't');
INSERT INTO "public"."in_out" VALUES ('7', '10', 'o', '2016-09-26 12:02:17', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '11', 'i', '2016-10-17 11:36:54', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '12', 'o', '2016-10-18 12:42:34', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '13', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '13', 'o', '2016-11-16 23:55:22', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '14', 'o', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '15', 'o', '2016-09-03 00:48:57', 't');
INSERT INTO "public"."in_out" VALUES ('7', '15', 'o', '2016-10-07 05:10:18', 't');
INSERT INTO "public"."in_out" VALUES ('7', '16', 'i', '2016-09-01 00:00:05', 't');
INSERT INTO "public"."in_out" VALUES ('7', '17', 'o', '2016-09-07 13:01:10', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '17', 'o', '2016-09-20 22:54:26', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '17', 'i', '2016-10-15 21:08:24', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '17', 'o', '2016-10-22 07:23:29', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '17', 'o', '2016-10-29 02:17:06', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '18', 'i', '2016-09-08 14:18:45', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '18', 'o', '2016-09-09 23:16:28', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '18', 'o', '2016-09-14 20:10:33', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '20', 'i', '2016-09-01 00:17:35', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '21', 'i', '2016-09-14 08:46:33', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '21', 'o', '2016-09-20 01:44:09', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '21', 'o', '2016-10-13 11:28:08', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '22', 'i', '2016-09-01 00:01:59', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '22', 'i', '2016-09-02 03:20:36', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '22', 'o', '2016-09-23 02:14:13', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '23', 'i', '2016-10-11 17:01:09', 't');
INSERT INTO "public"."in_out" VALUES ('7', '23', 'o', '2016-11-03 13:38:43', 't');
INSERT INTO "public"."in_out" VALUES ('7', '24', 'i', '2016-09-11 12:22:57', 't');
INSERT INTO "public"."in_out" VALUES ('7', '24', 'o', '2016-11-06 03:33:05', 't');
INSERT INTO "public"."in_out" VALUES ('7', '24', 'o', '2016-11-07 22:00:11', 't');
INSERT INTO "public"."in_out" VALUES ('7', '24', 'o', '2016-11-16 00:01:00', 't');
INSERT INTO "public"."in_out" VALUES ('7', '26', 'i', '2016-09-21 01:34:22', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '27', 'i', '2016-09-01 00:01:24', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '27', 'i', '2016-09-01 02:41:42', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '27', 'i', '2016-11-10 22:02:18', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '28', 'i', '2016-10-13 13:14:24', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '28', 'i', '2016-11-12 10:04:10', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '29', 'o', '2016-09-24 14:28:12', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '30', 'o', '2016-09-01 18:09:59', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '30', 'i', '2016-09-21 08:02:58', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '30', 'i', '2016-10-04 17:54:19', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '32', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '32', 'i', '2016-09-11 15:43:58', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '34', 'i', '2016-10-13 19:55:05', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '34', 'i', '2016-10-23 16:17:02', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '35', 'i', '2016-09-01 23:58:59', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '35', 'o', '2016-09-03 01:49:06', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '37', 'i', '2016-09-01 00:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '38', 'o', '2016-11-03 00:29:13', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '40', 'i', '2016-09-02 02:55:12', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '41', 'i', '2016-09-01 00:00:57', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '41', 'o', '2016-09-01 01:36:09', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '41', 'o', '2016-09-03 04:46:09', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '41', 'o', '2016-09-12 00:40:07', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '41', 'i', '2016-09-17 09:31:27', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '41', 'o', '2016-10-13 21:59:34', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '42', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '42', 'o', '2016-11-02 10:43:28', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '42', 'o', '2016-11-09 10:22:07', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '42', 'i', '2016-11-16 10:56:37', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '43', 'o', '2016-10-22 03:28:53', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '44', 'o', '2016-09-13 12:15:23', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '44', 'o', '2016-09-15 20:02:01', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '44', 'o', '2016-09-20 18:23:20', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '44', 'o', '2016-09-30 09:16:16', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '44', 'i', '2016-10-01 04:20:33', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '45', 'o', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '45', 'i', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '45', 'o', '2016-11-16 00:58:59', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '46', 'i', '2016-11-02 17:03:31', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '46', 'o', '2016-11-13 00:28:21', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '47', 'o', '2016-10-08 02:54:19', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '48', 'o', '2016-09-28 07:36:29', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '49', 'o', '2016-09-01 00:08:52', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '50', 'o', '2016-09-01 04:03:11', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '50', 'i', '2016-10-29 06:20:48', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '51', 'o', '2016-09-01 00:01:39', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '51', 'i', '2016-09-01 00:07:09', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '51', 'o', '2016-09-01 01:08:16', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '52', 'o', '2016-09-01 00:15:43', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '52', 'i', '2016-09-01 22:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('7', '52', 'i', '2016-11-13 17:19:45', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '1', 'o', '2016-09-01 00:13:31', 't');
INSERT INTO "public"."in_out" VALUES ('8', '2', 'i', '2016-09-01 01:48:28', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '2', 'i', '2016-10-13 01:20:56', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '2', 'i', '2016-10-18 21:18:11', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '2', 'i', '2016-11-07 13:50:05', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '3', 'i', '2016-09-16 22:32:15', 't');
INSERT INTO "public"."in_out" VALUES ('8', '3', 'i', '2016-11-12 08:17:56', 't');
INSERT INTO "public"."in_out" VALUES ('8', '4', 'o', '2016-09-08 18:07:28', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '5', 'i', '2016-09-01 23:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '5', 'i', '2016-11-07 13:06:19', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '6', 'i', '2016-09-01 00:14:49', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '6', 'o', '2016-10-06 12:56:55', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '8', 'i', '2016-09-01 01:43:36', 't');
INSERT INTO "public"."in_out" VALUES ('8', '8', 'o', '2016-11-08 08:28:52', 't');
INSERT INTO "public"."in_out" VALUES ('8', '9', 'o', '2016-09-03 10:59:46', 't');
INSERT INTO "public"."in_out" VALUES ('8', '9', 'i', '2016-10-23 08:53:08', 't');
INSERT INTO "public"."in_out" VALUES ('8', '11', 'i', '2016-09-01 13:56:57', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '11', 'i', '2016-09-02 23:26:07', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '11', 'o', '2016-10-12 02:56:30', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '12', 'o', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '12', 'i', '2016-10-13 01:28:13', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '12', 'o', '2016-10-13 16:54:14', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '12', 'o', '2016-11-06 08:49:35', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '13', 'i', '2016-09-01 00:01:06', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '13', 'i', '2016-09-27 19:24:11', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '13', 'o', '2016-10-31 08:38:58', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '14', 'i', '2016-09-06 13:00:04', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '15', 'i', '2016-09-01 00:11:56', 't');
INSERT INTO "public"."in_out" VALUES ('8', '15', 'o', '2016-09-27 15:48:55', 't');
INSERT INTO "public"."in_out" VALUES ('8', '16', 'i', '2016-09-04 07:59:10', 't');
INSERT INTO "public"."in_out" VALUES ('8', '16', 'o', '2016-09-07 05:30:56', 't');
INSERT INTO "public"."in_out" VALUES ('8', '16', 'o', '2016-10-01 17:03:14', 't');
INSERT INTO "public"."in_out" VALUES ('8', '16', 'i', '2016-10-02 16:56:49', 't');
INSERT INTO "public"."in_out" VALUES ('8', '18', 'o', '2016-11-16 23:58:59', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '20', 'i', '2016-10-04 20:25:04', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '21', 'o', '2016-09-01 00:21:15', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '21', 'i', '2016-09-29 13:16:17', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '21', 'o', '2016-10-27 12:46:16', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '22', 'i', '2016-10-23 02:46:12', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '22', 'o', '2016-11-15 23:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '23', 'i', '2016-10-04 11:17:09', 't');
INSERT INTO "public"."in_out" VALUES ('8', '23', 'i', '2016-11-11 21:50:27', 't');
INSERT INTO "public"."in_out" VALUES ('8', '24', 'i', '2016-09-26 08:25:14', 't');
INSERT INTO "public"."in_out" VALUES ('8', '26', 'o', '2016-09-01 00:01:22', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '26', 'o', '2016-09-01 02:29:14', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '26', 'i', '2016-09-03 06:53:55', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '26', 'o', '2016-09-23 19:46:40', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '26', 'i', '2016-10-03 11:45:08', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '27', 'i', '2016-09-25 12:12:03', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '27', 'o', '2016-09-29 15:47:41', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '28', 'o', '2016-10-26 05:19:18', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '29', 'i', '2016-09-01 02:07:57', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '29', 'i', '2016-11-15 06:46:54', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '30', 'o', '2016-09-02 22:31:28', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '30', 'i', '2016-09-03 10:41:31', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '30', 'o', '2016-11-16 23:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '32', 'i', '2016-09-28 01:58:13', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '32', 'o', '2016-10-17 20:24:38', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '33', 'i', '2016-09-01 00:00:26', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '33', 'i', '2016-09-01 19:25:24', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '34', 'o', '2016-09-01 00:01:33', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '34', 'o', '2016-09-01 00:12:53', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '34', 'i', '2016-09-01 05:46:37', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '34', 'o', '2016-09-18 05:20:30', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '34', 'o', '2016-11-13 12:09:45', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '35', 'o', '2016-09-05 22:43:57', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '36', 'o', '2016-09-09 11:12:51', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '36', 'i', '2016-09-15 10:14:26', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '36', 'o', '2016-09-25 13:10:14', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '36', 'i', '2016-10-08 09:28:43', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '37', 'o', '2016-09-04 03:01:49', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '37', 'i', '2016-09-24 22:50:17', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '38', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '38', 'o', '2016-09-30 04:36:04', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '38', 'o', '2016-10-17 13:13:32', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '38', 'o', '2016-10-24 08:04:37', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '40', 'o', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '40', 'i', '2016-09-22 06:55:09', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '41', 'o', '2016-09-01 01:40:27', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '41', 'i', '2016-09-01 02:44:15', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '42', 'i', '2016-10-27 17:11:24', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '42', 'i', '2016-11-10 07:44:10', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '43', 'i', '2016-10-05 22:53:41', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '44', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '44', 'i', '2016-09-01 00:03:42', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '45', 'o', '2016-09-17 13:01:44', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '45', 'o', '2016-11-10 04:45:21', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '46', 'o', '2016-09-01 09:55:11', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '46', 'o', '2016-11-16 23:01:01', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '47', 'i', '2016-09-01 18:39:51', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '47', 'i', '2016-09-20 18:57:15', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '48', 'i', '2016-09-01 00:27:18', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '49', 'i', '2016-09-09 16:54:03', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '50', 'o', '2016-09-03 03:28:47', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '50', 'i', '2016-09-05 05:34:30', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '50', 'o', '2016-09-23 02:16:59', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '50', 'i', '2016-10-07 20:30:26', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '50', 'i', '2016-11-12 09:42:32', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '52', 'o', '2016-09-16 08:59:30', 'f');
INSERT INTO "public"."in_out" VALUES ('8', '52', 'i', '2016-10-11 16:17:55', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '3', 'o', '2016-09-30 05:22:01', 't');
INSERT INTO "public"."in_out" VALUES ('9', '3', 'i', '2016-10-23 20:55:17', 't');
INSERT INTO "public"."in_out" VALUES ('9', '4', 'o', '2016-09-02 06:50:02', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '5', 'i', '2016-11-16 03:36:40', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '6', 'o', '2016-09-01 06:44:24', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '6', 'i', '2016-10-12 03:47:02', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '6', 'o', '2016-10-14 01:37:05', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '6', 'o', '2016-11-16 00:58:00', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '7', 'o', '2016-09-01 00:00:33', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '8', 'o', '2016-09-01 00:08:35', 't');
INSERT INTO "public"."in_out" VALUES ('9', '8', 'i', '2016-09-03 22:21:39', 't');
INSERT INTO "public"."in_out" VALUES ('9', '8', 'o', '2016-09-14 07:32:27', 't');
INSERT INTO "public"."in_out" VALUES ('9', '9', 'o', '2016-09-01 00:13:50', 't');
INSERT INTO "public"."in_out" VALUES ('9', '9', 'o', '2016-09-12 09:03:28', 't');
INSERT INTO "public"."in_out" VALUES ('9', '10', 'o', '2016-09-01 00:01:14', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '10', 'o', '2016-11-07 12:36:42', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '11', 'i', '2016-09-01 00:00:07', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '11', 'i', '2016-10-24 06:35:31', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '12', 'i', '2016-09-03 17:20:55', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '12', 'o', '2016-09-28 18:24:33', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '13', 'o', '2016-11-04 13:56:09', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '13', 'o', '2016-11-16 01:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '14', 'o', '2016-10-18 17:45:26', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '15', 'i', '2016-10-05 14:27:54', 't');
INSERT INTO "public"."in_out" VALUES ('9', '15', 'o', '2016-10-07 02:07:28', 't');
INSERT INTO "public"."in_out" VALUES ('9', '15', 'o', '2016-11-15 15:33:27', 't');
INSERT INTO "public"."in_out" VALUES ('9', '16', 'i', '2016-09-01 00:42:23', 't');
INSERT INTO "public"."in_out" VALUES ('9', '16', 'o', '2016-11-07 08:45:05', 't');
INSERT INTO "public"."in_out" VALUES ('9', '17', 'o', '2016-09-26 00:05:30', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '17', 'o', '2016-10-25 01:52:37', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '19', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '19', 'i', '2016-09-01 07:22:05', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '20', 'i', '2016-11-11 02:35:40', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '22', 'o', '2016-09-19 03:13:48', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '22', 'o', '2016-09-27 10:00:49', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '23', 'i', '2016-10-21 05:53:51', 't');
INSERT INTO "public"."in_out" VALUES ('9', '24', 'o', '2016-09-01 01:48:00', 't');
INSERT INTO "public"."in_out" VALUES ('9', '25', 'i', '2016-09-02 09:19:40', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '25', 'i', '2016-09-08 23:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '25', 'i', '2016-10-07 16:11:58', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '25', 'o', '2016-10-30 05:39:05', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '26', 'i', '2016-10-09 03:47:22', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '26', 'i', '2016-10-19 23:46:54', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '27', 'o', '2016-09-01 00:34:43', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '27', 'o', '2016-09-11 13:24:25', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '28', 'o', '2016-09-03 16:40:41', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '28', 'o', '2016-09-16 15:59:14', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '28', 'o', '2016-10-28 11:01:45', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '30', 'o', '2016-09-06 12:16:16', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '30', 'i', '2016-10-07 21:59:02', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '30', 'o', '2016-10-24 06:50:50', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '32', 'i', '2016-11-13 12:08:06', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '33', 'i', '2016-09-01 02:43:29', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '33', 'i', '2016-09-05 20:58:52', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '33', 'i', '2016-10-15 10:10:09', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '35', 'o', '2016-09-01 04:56:27', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '35', 'o', '2016-10-11 02:41:53', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '35', 'o', '2016-10-26 14:46:43', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '35', 'o', '2016-10-31 23:48:15', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '35', 'o', '2016-11-06 15:24:48', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '36', 'o', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '36', 'o', '2016-10-20 12:47:46', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '37', 'o', '2016-09-01 00:01:03', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '38', 'o', '2016-11-16 00:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '39', 'i', '2016-09-09 01:29:08', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '39', 'i', '2016-11-09 05:25:36', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '39', 'o', '2016-11-16 02:53:36', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '40', 'i', '2016-09-06 06:07:23', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '40', 'o', '2016-09-20 01:50:53', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '40', 'i', '2016-10-29 02:23:08', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '40', 'i', '2016-11-15 20:37:25', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '41', 'i', '2016-09-05 21:18:50', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '41', 'i', '2016-09-12 12:50:45', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '42', 'o', '2016-09-01 00:02:46', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '42', 'i', '2016-10-30 05:26:51', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '43', 'o', '2016-09-01 01:02:06', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '43', 'o', '2016-09-02 02:41:21', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '44', 'o', '2016-11-16 00:01:59', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '46', 'o', '2016-09-01 00:00:56', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '46', 'i', '2016-09-01 19:50:16', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '46', 'o', '2016-09-05 18:26:41', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '46', 'o', '2016-11-05 11:52:53', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '46', 'i', '2016-11-16 12:18:31', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '47', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '47', 'o', '2016-09-13 01:59:54', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '48', 'i', '2016-09-01 00:01:01', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '48', 'o', '2016-09-01 00:11:27', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '48', 'o', '2016-09-09 13:35:29', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '48', 'o', '2016-09-11 04:20:55', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '48', 'o', '2016-11-16 23:58:00', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '49', 'o', '2016-10-17 19:40:19', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '49', 'o', '2016-10-26 09:34:28', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '50', 'o', '2016-10-23 06:56:27', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '51', 'o', '2016-09-08 13:08:23', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '51', 'o', '2016-10-17 12:21:11', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '51', 'i', '2016-11-16 23:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '52', 'o', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '52', 'i', '2016-09-01 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '52', 'i', '2016-10-14 06:16:51', 'f');
INSERT INTO "public"."in_out" VALUES ('9', '52', 'o', '2016-11-08 10:28:52', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '1', 'i', '2016-09-01 00:01:00', 't');
INSERT INTO "public"."in_out" VALUES ('10', '1', 'i', '2016-09-01 00:09:15', 't');
INSERT INTO "public"."in_out" VALUES ('10', '1', 'o', '2016-09-06 09:48:51', 't');
INSERT INTO "public"."in_out" VALUES ('10', '2', 'i', '2016-09-05 20:01:07', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '2', 'o', '2016-10-07 08:05:54', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '3', 'i', '2016-09-01 09:02:30', 't');
INSERT INTO "public"."in_out" VALUES ('10', '4', 'o', '2016-09-07 17:26:37', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '4', 'o', '2016-11-13 13:00:42', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '5', 'o', '2016-10-22 06:51:34', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '7', 'o', '2016-09-07 04:13:57', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '7', 'o', '2016-10-11 10:07:39', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '8', 'i', '2016-10-25 01:59:18', 't');
INSERT INTO "public"."in_out" VALUES ('10', '8', 'o', '2016-11-05 06:48:00', 't');
INSERT INTO "public"."in_out" VALUES ('10', '8', 'i', '2016-11-16 23:01:59', 't');
INSERT INTO "public"."in_out" VALUES ('10', '9', 'i', '2016-10-03 22:12:03', 't');
INSERT INTO "public"."in_out" VALUES ('10', '9', 'i', '2016-10-19 08:50:30', 't');
INSERT INTO "public"."in_out" VALUES ('10', '10', 'i', '2016-09-02 00:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '10', 'i', '2016-10-09 04:19:18', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '11', 'i', '2016-09-17 23:20:49', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '12', 'o', '2016-09-08 00:30:26', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '13', 'o', '2016-09-15 19:49:00', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '13', 'i', '2016-09-23 12:51:04', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '13', 'o', '2016-10-18 03:19:46', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '14', 'i', '2016-10-07 09:31:52', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '14', 'o', '2016-11-04 16:55:57', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '15', 'o', '2016-09-01 00:05:42', 't');
INSERT INTO "public"."in_out" VALUES ('10', '16', 'i', '2016-09-01 00:46:46', 't');
INSERT INTO "public"."in_out" VALUES ('10', '16', 'i', '2016-09-01 02:29:08', 't');
INSERT INTO "public"."in_out" VALUES ('10', '17', 'i', '2016-09-16 00:40:28', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '17', 'o', '2016-10-23 19:51:11', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '18', 'o', '2016-09-01 00:01:34', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '19', 'i', '2016-09-01 00:25:22', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '19', 'o', '2016-10-06 16:55:58', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '20', 'o', '2016-09-01 00:01:51', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '21', 'i', '2016-09-01 05:57:02', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '21', 'o', '2016-11-07 16:25:12', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '21', 'i', '2016-11-13 05:03:57', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '22', 'i', '2016-09-01 00:28:12', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '24', 'i', '2016-09-27 15:19:28', 't');
INSERT INTO "public"."in_out" VALUES ('10', '24', 'o', '2016-10-19 03:31:02', 't');
INSERT INTO "public"."in_out" VALUES ('10', '24', 'i', '2016-10-23 12:25:54', 't');
INSERT INTO "public"."in_out" VALUES ('10', '25', 'i', '2016-10-15 03:18:50', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '26', 'i', '2016-09-01 00:48:44', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '26', 'i', '2016-09-01 00:53:15', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '26', 'o', '2016-09-01 01:49:45', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '28', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '28', 'o', '2016-09-01 00:32:44', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '28', 'i', '2016-10-06 02:45:15', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '28', 'o', '2016-10-30 15:42:16', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '29', 'i', '2016-09-19 07:45:49', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '30', 'o', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '30', 'i', '2016-09-08 12:49:08', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '31', 'i', '2016-09-04 22:57:10', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '31', 'i', '2016-09-24 22:16:05', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '31', 'i', '2016-10-18 15:06:40', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '31', 'o', '2016-11-16 01:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '31', 'i', '2016-11-16 06:58:30', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '32', 'i', '2016-10-04 10:46:39', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '33', 'o', '2016-09-01 00:13:02', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '33', 'i', '2016-09-01 01:41:21', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '33', 'o', '2016-09-11 05:01:37', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '33', 'o', '2016-10-31 03:38:40', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '34', 'i', '2016-09-02 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '34', 'i', '2016-10-19 02:54:09', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '34', 'o', '2016-11-13 09:54:57', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '36', 'o', '2016-09-01 00:07:53', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '37', 'i', '2016-09-01 00:18:19', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '37', 'i', '2016-09-01 10:10:40', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '37', 'i', '2016-09-18 00:23:32', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '37', 'o', '2016-09-24 16:39:33', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '37', 'o', '2016-11-13 15:56:34', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '38', 'o', '2016-09-01 00:10:50', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '39', 'i', '2016-09-15 06:39:04', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '39', 'i', '2016-09-18 14:44:19', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '40', 'i', '2016-09-01 00:11:29', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '40', 'o', '2016-09-01 00:58:59', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '40', 'o', '2016-09-01 11:54:54', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '41', 'o', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '41', 'i', '2016-09-14 03:56:58', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '41', 'o', '2016-10-29 10:15:43', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '42', 'i', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '42', 'i', '2016-09-01 00:00:19', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '43', 'i', '2016-09-01 00:00:16', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '43', 'o', '2016-11-03 23:36:19', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '43', 'i', '2016-11-05 23:46:44', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '45', 'o', '2016-09-01 00:14:05', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '45', 'i', '2016-10-07 12:00:26', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '45', 'i', '2016-11-11 22:37:06', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '46', 'i', '2016-10-31 18:45:46', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '46', 'i', '2016-11-16 00:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '47', 'i', '2016-09-07 07:49:46', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '47', 'o', '2016-09-27 19:23:02', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '49', 'o', '2016-09-01 00:05:41', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '49', 'i', '2016-10-19 07:36:43', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '50', 'o', '2016-11-06 22:00:42', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '51', 'o', '2016-09-01 00:04:41', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '52', 'o', '2016-09-02 01:17:53', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '52', 'i', '2016-10-06 07:08:06', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '52', 'o', '2016-10-11 03:17:42', 'f');
INSERT INTO "public"."in_out" VALUES ('10', '52', 'i', '2016-11-09 04:38:57', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '3', 'o', '2016-09-27 04:14:38', 't');
INSERT INTO "public"."in_out" VALUES ('11', '4', 'o', '2016-10-20 20:33:15', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '5', 'i', '2016-09-08 08:29:13', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '6', 'i', '2016-09-01 00:14:20', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '6', 'o', '2016-10-23 07:56:35', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '7', 'o', '2016-11-01 10:33:20', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '11', 'o', '2016-11-15 12:35:48', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '21', 'i', '2016-10-15 08:43:33', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '22', 'i', '2016-10-04 10:02:36', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '31', 'o', '2016-10-19 02:35:35', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '32', 'i', '2016-09-01 00:07:09', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '34', 'i', '2016-10-27 14:11:42', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '36', 'o', '2016-10-31 21:04:37', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '36', 'i', '2016-11-07 06:51:42', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '41', 'i', '2016-09-01 00:00:07', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '45', 'o', '2016-09-17 04:47:41', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '46', 'i', '2016-09-14 11:40:22', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '47', 'i', '2016-09-02 13:54:15', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '50', 'i', '2016-10-29 11:39:08', 'f');
INSERT INTO "public"."in_out" VALUES ('11', '52', 'o', '2016-10-01 22:29:42', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '5', 'i', '2016-09-15 18:39:00', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '8', 'o', '2016-09-01 00:00:05', 't');
INSERT INTO "public"."in_out" VALUES ('12', '10', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '10', 'i', '2016-09-01 23:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '14', 'i', '2016-09-23 20:52:56', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '14', 'i', '2016-10-28 00:25:40', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '16', 'o', '2016-10-24 06:43:54', 't');
INSERT INTO "public"."in_out" VALUES ('12', '18', 'i', '2016-09-09 21:06:59', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '18', 'i', '2016-11-16 20:22:01', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '22', 'i', '2016-09-06 12:15:35', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '24', 'i', '2016-10-15 13:21:01', 't');
INSERT INTO "public"."in_out" VALUES ('12', '26', 'o', '2016-09-01 00:14:34', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '29', 'i', '2016-09-04 02:42:11', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '30', 'i', '2016-09-01 11:59:22', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '30', 'i', '2016-11-16 23:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '35', 'o', '2016-10-20 10:31:43', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '40', 'o', '2016-10-30 19:07:54', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '41', 'i', '2016-09-01 00:01:17', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '43', 'i', '2016-09-18 00:26:22', 'f');
INSERT INTO "public"."in_out" VALUES ('12', '46', 'i', '2016-10-20 15:21:47', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '7', 'i', '2016-09-15 06:06:45', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '9', 'o', '2016-10-05 00:30:55', 't');
INSERT INTO "public"."in_out" VALUES ('13', '11', 'o', '2016-11-05 10:34:33', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '15', 'i', '2016-09-14 12:24:11', 't');
INSERT INTO "public"."in_out" VALUES ('13', '16', 'o', '2016-09-01 00:00:05', 't');
INSERT INTO "public"."in_out" VALUES ('13', '19', 'i', '2016-11-03 01:54:58', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '20', 'o', '2016-09-14 00:02:32', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '28', 'o', '2016-09-30 14:37:59', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '29', 'i', '2016-09-01 22:38:14', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '30', 'o', '2016-09-01 00:01:34', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '31', 'i', '2016-10-10 19:59:31', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '31', 'o', '2016-10-11 20:34:22', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '33', 'i', '2016-11-16 05:54:38', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '34', 'o', '2016-09-17 16:38:14', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '37', 'o', '2016-11-14 05:33:34', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '40', 'o', '2016-09-09 15:33:52', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '48', 'i', '2016-09-02 10:06:16', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '49', 'i', '2016-09-01 01:34:04', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '52', 'o', '2016-10-25 08:48:31', 'f');
INSERT INTO "public"."in_out" VALUES ('13', '52', 'i', '2016-11-16 00:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '1', 'i', '2016-10-08 06:09:53', 't');
INSERT INTO "public"."in_out" VALUES ('14', '1', 'o', '2016-11-11 20:54:13', 't');
INSERT INTO "public"."in_out" VALUES ('14', '7', 'o', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '9', 'o', '2016-11-16 00:00:59', 't');
INSERT INTO "public"."in_out" VALUES ('14', '10', 'o', '2016-09-01 18:03:56', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '11', 'i', '2016-10-10 12:30:41', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '12', 'o', '2016-11-16 00:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '18', 'i', '2016-09-15 23:40:36', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '20', 'o', '2016-09-01 10:17:41', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '23', 'o', '2016-10-02 16:29:28', 't');
INSERT INTO "public"."in_out" VALUES ('14', '24', 'i', '2016-10-15 00:03:53', 't');
INSERT INTO "public"."in_out" VALUES ('14', '26', 'o', '2016-09-07 09:28:31', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '27', 'i', '2016-10-11 08:00:56', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '34', 'i', '2016-10-29 22:12:49', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '34', 'i', '2016-11-07 04:25:41', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '36', 'i', '2016-09-01 00:00:50', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '43', 'i', '2016-10-01 00:58:01', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '44', 'i', '2016-10-24 19:10:38', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '44', 'i', '2016-11-05 01:56:55', 'f');
INSERT INTO "public"."in_out" VALUES ('14', '46', 'i', '2016-11-16 23:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '11', 'o', '2016-10-12 11:07:29', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '13', 'o', '2016-09-15 01:36:49', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '14', 'o', '2016-11-10 15:05:18', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '17', 'i', '2016-09-28 00:45:59', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '17', 'i', '2016-10-19 06:31:48', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '17', 'i', '2016-10-23 02:10:40', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '27', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '27', 'o', '2016-10-07 01:31:45', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '30', 'o', '2016-10-14 09:34:41', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '33', 'o', '2016-09-01 00:00:49', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '35', 'o', '2016-09-01 00:00:56', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '37', 'i', '2016-09-01 23:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '39', 'o', '2016-10-11 15:40:20', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '40', 'o', '2016-11-06 17:28:07', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '43', 'i', '2016-11-16 00:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '44', 'o', '2016-11-06 18:09:16', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '47', 'i', '2016-09-17 02:04:07', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '48', 'o', '2016-09-21 02:09:55', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '48', 'i', '2016-09-26 18:27:17', 'f');
INSERT INTO "public"."in_out" VALUES ('15', '50', 'i', '2016-11-16 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '2', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '2', 'o', '2016-10-31 18:30:12', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '4', 'i', '2016-09-01 00:00:04', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '5', 'i', '2016-09-01 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '6', 'o', '2016-09-01 00:10:11', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '9', 'i', '2016-09-01 00:00:07', 't');
INSERT INTO "public"."in_out" VALUES ('16', '12', 'o', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '12', 'o', '2016-10-03 06:32:55', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '13', 'i', '2016-09-01 00:00:09', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '13', 'o', '2016-10-10 12:08:15', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '16', 'i', '2016-09-01 00:00:01', 't');
INSERT INTO "public"."in_out" VALUES ('16', '16', 'o', '2016-11-15 22:59:32', 't');
INSERT INTO "public"."in_out" VALUES ('16', '24', 'o', '2016-09-04 06:56:59', 't');
INSERT INTO "public"."in_out" VALUES ('16', '26', 'o', '2016-09-01 00:14:48', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '29', 'o', '2016-09-01 00:06:57', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '35', 'o', '2016-10-20 01:40:08', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '42', 'o', '2016-09-01 00:03:56', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '42', 'i', '2016-09-01 00:55:38', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '47', 'i', '2016-09-29 11:14:59', 'f');
INSERT INTO "public"."in_out" VALUES ('16', '48', 'i', '2016-11-16 23:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '2', 'i', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '3', 'i', '2016-09-01 00:00:10', 't');
INSERT INTO "public"."in_out" VALUES ('17', '7', 'o', '2016-10-28 10:40:39', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '18', 'i', '2016-09-09 06:09:56', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '19', 'i', '2016-10-18 16:28:04', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '21', 'o', '2016-10-14 09:35:02', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '22', 'i', '2016-09-15 18:45:39', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '23', 'i', '2016-09-04 05:34:10', 't');
INSERT INTO "public"."in_out" VALUES ('17', '25', 'i', '2016-10-19 20:56:15', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '33', 'o', '2016-10-30 17:03:02', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '38', 'o', '2016-09-01 00:01:32', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '38', 'i', '2016-09-09 08:20:48', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '39', 'o', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '40', 'i', '2016-09-21 09:52:53', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '41', 'o', '2016-11-11 17:25:05', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '43', 'i', '2016-09-01 04:25:35', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '45', 'o', '2016-11-16 23:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '50', 'i', '2016-10-18 12:07:44', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '51', 'i', '2016-09-26 10:58:39', 'f');
INSERT INTO "public"."in_out" VALUES ('17', '52', 'i', '2016-09-09 19:07:21', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '3', 'o', '2016-10-06 19:59:12', 't');
INSERT INTO "public"."in_out" VALUES ('18', '4', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '8', 'o', '2016-09-05 05:44:34', 't');
INSERT INTO "public"."in_out" VALUES ('18', '15', 'i', '2016-09-01 01:58:29', 't');
INSERT INTO "public"."in_out" VALUES ('18', '15', 'i', '2016-09-29 00:48:54', 't');
INSERT INTO "public"."in_out" VALUES ('18', '17', 'o', '2016-10-01 22:36:02', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '19', 'i', '2016-09-30 06:19:37', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '20', 'o', '2016-09-01 00:00:12', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '23', 'o', '2016-09-01 01:27:20', 't');
INSERT INTO "public"."in_out" VALUES ('18', '24', 'i', '2016-09-01 00:00:38', 't');
INSERT INTO "public"."in_out" VALUES ('18', '25', 'o', '2016-09-01 00:00:15', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '27', 'i', '2016-10-03 10:38:08', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '32', 'i', '2016-09-01 13:22:55', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '36', 'i', '2016-11-10 22:35:50', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '38', 'o', '2016-09-01 00:05:34', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '39', 'o', '2016-09-19 12:37:19', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '44', 'i', '2016-09-01 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '49', 'i', '2016-09-19 18:23:22', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '49', 'o', '2016-10-30 18:05:19', 'f');
INSERT INTO "public"."in_out" VALUES ('18', '50', 'i', '2016-11-01 13:26:47', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '1', 'o', '2016-09-01 00:14:28', 't');
INSERT INTO "public"."in_out" VALUES ('19', '4', 'o', '2016-11-16 00:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '6', 'i', '2016-09-01 00:15:53', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '8', 'o', '2016-09-10 10:03:00', 't');
INSERT INTO "public"."in_out" VALUES ('19', '8', 'i', '2016-10-17 21:48:22', 't');
INSERT INTO "public"."in_out" VALUES ('19', '10', 'i', '2016-09-03 11:03:12', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '13', 'o', '2016-09-01 00:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '19', 'o', '2016-11-15 05:07:41', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '21', 'i', '2016-09-01 00:00:04', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '21', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '22', 'i', '2016-10-02 16:00:39', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '23', 'i', '2016-09-01 01:38:59', 't');
INSERT INTO "public"."in_out" VALUES ('19', '25', 'o', '2016-09-01 00:00:37', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '25', 'i', '2016-11-16 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '28', 'i', '2016-09-01 13:34:22', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '32', 'o', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '32', 'o', '2016-09-07 12:16:27', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '38', 'i', '2016-10-25 11:57:23', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '41', 'i', '2016-09-01 00:08:25', 'f');
INSERT INTO "public"."in_out" VALUES ('19', '46', 'i', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '1', 'i', '2016-09-19 22:33:31', 't');
INSERT INTO "public"."in_out" VALUES ('20', '2', 'i', '2016-09-21 13:56:04', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '5', 'i', '2016-09-01 04:55:30', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '12', 'i', '2016-09-06 14:12:37', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '14', 'i', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '15', 'o', '2016-09-13 20:01:28', 't');
INSERT INTO "public"."in_out" VALUES ('20', '20', 'o', '2016-09-01 00:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '26', 'i', '2016-11-05 04:05:41', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '28', 'o', '2016-09-01 01:41:58', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '29', 'o', '2016-09-04 22:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '31', 'i', '2016-09-05 03:55:15', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '35', 'o', '2016-10-28 21:25:30', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '37', 'i', '2016-09-01 00:00:11', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '39', 'o', '2016-11-16 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '42', 'i', '2016-09-18 13:33:24', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '45', 'i', '2016-09-11 23:43:52', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '47', 'i', '2016-09-10 04:07:30', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '51', 'i', '2016-09-01 23:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '51', 'o', '2016-10-02 03:06:24', 'f');
INSERT INTO "public"."in_out" VALUES ('20', '51', 'i', '2016-10-27 09:48:06', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '1', 'o', '2016-09-17 21:16:39', 't');
INSERT INTO "public"."in_out" VALUES ('21', '1', 'i', '2016-11-02 17:23:25', 't');
INSERT INTO "public"."in_out" VALUES ('21', '1', 'o', '2016-11-12 13:30:54', 't');
INSERT INTO "public"."in_out" VALUES ('21', '2', 'i', '2016-09-12 18:24:45', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '2', 'o', '2016-09-28 21:01:30', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '4', 'i', '2016-09-01 00:11:40', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '4', 'o', '2016-09-08 16:12:43', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '4', 'i', '2016-09-17 11:43:36', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '5', 'i', '2016-09-03 14:14:57', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '5', 'o', '2016-11-12 15:05:03', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '6', 'o', '2016-09-11 08:50:49', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '7', 'o', '2016-09-01 00:03:20', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '8', 'i', '2016-09-21 06:41:11', 't');
INSERT INTO "public"."in_out" VALUES ('21', '8', 'o', '2016-09-23 14:51:22', 't');
INSERT INTO "public"."in_out" VALUES ('21', '8', 'o', '2016-10-12 04:19:49', 't');
INSERT INTO "public"."in_out" VALUES ('21', '10', 'i', '2016-09-30 18:14:03', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '12', 'i', '2016-09-10 15:29:51', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '13', 'i', '2016-09-01 01:56:55', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '14', 'i', '2016-09-30 21:46:32', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '14', 'i', '2016-10-17 02:20:06', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '15', 'i', '2016-11-15 14:42:12', 't');
INSERT INTO "public"."in_out" VALUES ('21', '16', 'i', '2016-09-01 23:00:59', 't');
INSERT INTO "public"."in_out" VALUES ('21', '16', 'o', '2016-10-09 16:02:32', 't');
INSERT INTO "public"."in_out" VALUES ('21', '17', 'o', '2016-09-12 07:01:15', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '18', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '18', 'i', '2016-09-01 00:00:49', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '18', 'i', '2016-09-03 12:56:30', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '18', 'i', '2016-11-16 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '19', 'o', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '20', 'o', '2016-11-16 22:52:52', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '22', 'i', '2016-10-14 06:17:55', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '22', 'o', '2016-11-16 23:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '23', 'i', '2016-09-30 17:16:35', 't');
INSERT INTO "public"."in_out" VALUES ('21', '24', 'i', '2016-09-16 08:57:06', 't');
INSERT INTO "public"."in_out" VALUES ('21', '24', 'o', '2016-10-23 14:34:22', 't');
INSERT INTO "public"."in_out" VALUES ('21', '25', 'i', '2016-09-01 00:15:05', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '25', 'o', '2016-10-08 12:36:40', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '25', 'o', '2016-10-31 12:28:10', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '25', 'i', '2016-11-10 18:15:02', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '26', 'o', '2016-09-01 00:00:18', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '26', 'o', '2016-11-13 07:48:55', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '27', 'i', '2016-09-01 00:05:58', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '28', 'o', '2016-10-05 09:45:34', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '28', 'i', '2016-11-16 03:21:35', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '29', 'i', '2016-10-10 06:29:20', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '30', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '30', 'i', '2016-11-06 01:07:36', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '32', 'i', '2016-09-01 00:00:57', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '32', 'o', '2016-09-03 20:27:54', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '33', 'i', '2016-11-08 08:27:43', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '34', 'i', '2016-09-28 01:49:23', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '36', 'i', '2016-09-06 14:50:02', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '36', 'o', '2016-10-16 02:25:37', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '37', 'i', '2016-09-15 11:48:05', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '38', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '38', 'o', '2016-09-01 00:42:43', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '38', 'i', '2016-11-10 08:06:23', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '39', 'i', '2016-10-20 00:22:51', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '39', 'o', '2016-11-03 23:57:55', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '41', 'o', '2016-10-06 19:04:45', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '41', 'o', '2016-11-16 23:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '42', 'o', '2016-09-03 19:00:32', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '42', 'o', '2016-10-03 04:09:12', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '42', 'o', '2016-10-12 23:08:42', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '42', 'i', '2016-11-02 23:59:18', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '42', 'i', '2016-11-12 21:49:57', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '43', 'i', '2016-09-23 20:10:36', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '43', 'i', '2016-10-18 19:21:55', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '43', 'o', '2016-11-11 07:17:48', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '44', 'o', '2016-09-01 02:02:28', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '44', 'o', '2016-09-26 09:00:34', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '45', 'i', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '45', 'o', '2016-09-01 10:30:09', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '45', 'o', '2016-10-14 18:24:33', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '46', 'o', '2016-10-20 11:02:22', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '46', 'i', '2016-11-05 21:34:02', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '48', 'o', '2016-09-01 00:12:10', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '49', 'i', '2016-10-14 09:01:17', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '50', 'o', '2016-09-01 00:11:25', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '51', 'o', '2016-09-01 18:33:14', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '51', 'i', '2016-09-19 02:40:31', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '51', 'i', '2016-11-03 11:54:18', 'f');
INSERT INTO "public"."in_out" VALUES ('21', '52', 'o', '2016-09-09 21:20:56', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '1', 'o', '2016-09-01 00:00:04', 't');
INSERT INTO "public"."in_out" VALUES ('22', '2', 'i', '2016-09-15 09:43:03', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '2', 'o', '2016-10-18 09:16:56', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '3', 'i', '2016-09-04 06:31:54', 't');
INSERT INTO "public"."in_out" VALUES ('22', '3', 'i', '2016-09-10 13:42:13', 't');
INSERT INTO "public"."in_out" VALUES ('22', '3', 'o', '2016-10-26 20:41:44', 't');
INSERT INTO "public"."in_out" VALUES ('22', '4', 'o', '2016-10-15 19:34:20', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '4', 'o', '2016-11-09 15:55:43', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '5', 'i', '2016-09-01 00:16:16', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '5', 'i', '2016-10-29 10:27:40', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '5', 'i', '2016-11-04 07:47:59', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '6', 'o', '2016-09-20 10:53:32', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '6', 'i', '2016-10-02 20:44:03', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '7', 'o', '2016-10-14 02:41:46', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '8', 'o', '2016-11-03 08:12:06', 't');
INSERT INTO "public"."in_out" VALUES ('22', '9', 'o', '2016-10-19 09:12:55', 't');
INSERT INTO "public"."in_out" VALUES ('22', '10', 'o', '2016-09-01 00:13:41', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '10', 'i', '2016-09-01 01:06:02', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '11', 'i', '2016-09-25 08:59:40', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '11', 'i', '2016-10-02 01:55:19', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '11', 'o', '2016-11-07 16:39:47', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '12', 'i', '2016-09-01 00:05:44', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '13', 'i', '2016-09-10 20:53:38', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '13', 'i', '2016-10-31 17:15:04', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '14', 'i', '2016-09-27 13:18:31', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '14', 'o', '2016-10-12 05:09:37', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '15', 'o', '2016-10-06 07:01:17', 't');
INSERT INTO "public"."in_out" VALUES ('22', '16', 'o', '2016-10-17 08:59:58', 't');
INSERT INTO "public"."in_out" VALUES ('22', '17', 'o', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '17', 'i', '2016-09-01 00:01:39', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '18', 'o', '2016-10-13 06:54:22', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '19', 'i', '2016-09-01 02:10:05', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '20', 'i', '2016-09-01 00:01:18', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '20', 'o', '2016-09-24 18:46:46', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '22', 'o', '2016-09-15 13:25:21', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '22', 'i', '2016-09-22 18:24:07', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '22', 'o', '2016-09-25 12:29:25', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '22', 'o', '2016-09-26 03:41:52', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '23', 'i', '2016-09-06 12:17:21', 't');
INSERT INTO "public"."in_out" VALUES ('22', '23', 'i', '2016-10-13 06:39:05', 't');
INSERT INTO "public"."in_out" VALUES ('22', '24', 'o', '2016-09-04 10:35:58', 't');
INSERT INTO "public"."in_out" VALUES ('22', '26', 'i', '2016-09-01 01:43:23', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '26', 'o', '2016-10-02 03:51:07', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '27', 'i', '2016-09-01 00:00:30', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '27', 'o', '2016-10-04 08:25:16', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '27', 'o', '2016-10-25 12:48:05', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '28', 'o', '2016-10-30 15:11:19', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '29', 'o', '2016-09-01 00:00:27', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '29', 'i', '2016-09-01 11:16:22', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '31', 'o', '2016-09-01 03:21:16', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '31', 'i', '2016-10-26 14:20:22', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '33', 'i', '2016-09-22 21:44:07', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '33', 'i', '2016-11-16 12:00:21', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '34', 'i', '2016-09-01 03:47:25', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '34', 'i', '2016-11-04 19:45:50', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '35', 'o', '2016-09-03 16:41:29', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '35', 'i', '2016-09-23 23:38:21', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '35', 'i', '2016-10-20 21:48:05', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '37', 'o', '2016-10-14 03:47:42', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '37', 'o', '2016-11-11 14:48:27', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '38', 'o', '2016-09-01 00:00:58', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '38', 'i', '2016-09-02 09:07:09', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '39', 'o', '2016-10-01 19:27:08', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '40', 'o', '2016-09-27 00:54:02', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '41', 'o', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '42', 'o', '2016-09-04 17:18:02', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '42', 'o', '2016-10-13 01:31:28', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '42', 'i', '2016-11-01 15:23:40', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '43', 'i', '2016-09-27 07:28:24', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '44', 'o', '2016-09-01 00:02:39', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '44', 'i', '2016-09-02 23:53:26', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '45', 'o', '2016-09-28 22:22:06', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '46', 'i', '2016-09-01 01:57:25', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '46', 'i', '2016-09-01 22:24:41', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '47', 'o', '2016-09-15 01:48:13', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '49', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '49', 'i', '2016-09-01 03:04:14', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '49', 'i', '2016-11-07 04:57:50', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '50', 'o', '2016-09-06 12:49:16', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '50', 'i', '2016-09-30 01:10:12', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '50', 'o', '2016-11-06 10:58:49', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '52', 'o', '2016-10-16 17:42:51', 'f');
INSERT INTO "public"."in_out" VALUES ('22', '52', 'o', '2016-11-07 16:54:34', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '1', 'i', '2016-09-01 12:21:13', 't');
INSERT INTO "public"."in_out" VALUES ('23', '1', 'i', '2016-10-23 09:37:25', 't');
INSERT INTO "public"."in_out" VALUES ('23', '1', 'i', '2016-11-03 04:43:40', 't');
INSERT INTO "public"."in_out" VALUES ('23', '2', 'o', '2016-09-01 00:01:11', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '3', 'i', '2016-09-30 14:34:54', 't');
INSERT INTO "public"."in_out" VALUES ('23', '3', 'o', '2016-11-07 12:38:47', 't');
INSERT INTO "public"."in_out" VALUES ('23', '4', 'i', '2016-09-24 22:15:04', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '4', 'i', '2016-11-16 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '6', 'o', '2016-09-04 12:21:20', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '7', 'o', '2016-09-01 00:00:42', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '7', 'o', '2016-09-09 08:33:34', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '7', 'i', '2016-09-11 23:43:17', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '7', 'i', '2016-09-12 09:02:49', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '7', 'i', '2016-09-15 05:01:56', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '8', 'o', '2016-09-01 00:14:15', 't');
INSERT INTO "public"."in_out" VALUES ('23', '10', 'i', '2016-09-22 03:29:32', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '11', 'o', '2016-09-01 00:00:58', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '12', 'i', '2016-09-13 22:02:17', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '12', 'o', '2016-11-01 22:35:19', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '13', 'i', '2016-10-14 20:09:41', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '15', 'i', '2016-09-19 22:08:45', 't');
INSERT INTO "public"."in_out" VALUES ('23', '15', 'o', '2016-10-31 14:34:09', 't');
INSERT INTO "public"."in_out" VALUES ('23', '16', 'i', '2016-09-03 17:17:40', 't');
INSERT INTO "public"."in_out" VALUES ('23', '16', 'i', '2016-09-27 07:11:17', 't');
INSERT INTO "public"."in_out" VALUES ('23', '17', 'o', '2016-09-25 02:59:47', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '17', 'i', '2016-11-11 00:41:39', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '18', 'o', '2016-09-01 10:57:42', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '19', 'o', '2016-09-15 05:44:24', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '20', 'i', '2016-09-01 00:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '21', 'i', '2016-09-05 17:13:36', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '21', 'o', '2016-10-16 14:02:00', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '23', 'i', '2016-09-01 00:00:01', 't');
INSERT INTO "public"."in_out" VALUES ('23', '23', 'o', '2016-09-08 04:56:25', 't');
INSERT INTO "public"."in_out" VALUES ('23', '23', 'o', '2016-09-30 02:14:29', 't');
INSERT INTO "public"."in_out" VALUES ('23', '24', 'o', '2016-09-16 08:32:29', 't');
INSERT INTO "public"."in_out" VALUES ('23', '25', 'i', '2016-09-09 12:57:41', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '27', 'o', '2016-09-24 04:42:43', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '27', 'o', '2016-09-30 07:53:12', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '28', 'o', '2016-09-01 00:35:20', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '29', 'i', '2016-09-09 21:01:24', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '29', 'o', '2016-09-19 21:03:20', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '29', 'o', '2016-10-12 13:30:18', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '30', 'o', '2016-09-01 00:17:07', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '30', 'i', '2016-09-09 14:39:06', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '31', 'i', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '31', 'o', '2016-09-01 00:00:36', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '33', 'o', '2016-09-01 23:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '33', 'o', '2016-09-03 12:04:51', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '33', 'o', '2016-09-04 13:20:08', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '33', 'i', '2016-09-16 10:23:46', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '34', 'o', '2016-10-02 13:15:44', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '34', 'i', '2016-10-04 21:58:41', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '35', 'o', '2016-09-01 01:39:05', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '35', 'i', '2016-09-01 13:29:14', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '36', 'o', '2016-09-01 00:28:39', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '36', 'i', '2016-09-04 16:52:29', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '36', 'o', '2016-11-16 00:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '37', 'i', '2016-09-01 00:15:29', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '37', 'o', '2016-10-02 05:27:18', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '37', 'o', '2016-10-15 07:11:01', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '37', 'i', '2016-10-29 12:15:09', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '38', 'i', '2016-10-21 14:44:09', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '39', 'o', '2016-09-01 00:00:08', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '40', 'o', '2016-11-11 13:48:36', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '41', 'o', '2016-09-01 00:00:05', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '41', 'o', '2016-09-12 08:02:52', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '41', 'o', '2016-10-06 11:01:44', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '41', 'o', '2016-10-14 09:39:14', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '41', 'o', '2016-10-15 08:03:24', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '44', 'o', '2016-10-16 09:55:36', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '45', 'o', '2016-09-01 00:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '47', 'o', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '47', 'i', '2016-10-08 16:50:53', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '48', 'o', '2016-09-01 01:02:46', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '48', 'o', '2016-09-09 12:34:24', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '49', 'i', '2016-09-01 00:01:14', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '49', 'i', '2016-10-07 07:30:43', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '50', 'i', '2016-11-09 01:09:28', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '51', 'o', '2016-09-01 00:09:51', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '51', 'i', '2016-09-01 20:20:44', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '51', 'i', '2016-10-13 05:54:42', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '51', 'o', '2016-10-18 14:37:52', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '52', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('23', '52', 'o', '2016-09-27 15:40:31', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '1', 'o', '2016-11-01 06:24:39', 't');
INSERT INTO "public"."in_out" VALUES ('24', '2', 'o', '2016-09-01 00:12:29', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '2', 'i', '2016-10-15 18:11:30', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '2', 'i', '2016-10-27 21:28:07', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '3', 'o', '2016-09-01 01:38:17', 't');
INSERT INTO "public"."in_out" VALUES ('24', '4', 'o', '2016-09-01 00:49:54', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '4', 'i', '2016-11-15 05:51:42', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '5', 'i', '2016-09-08 10:48:39', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '6', 'o', '2016-09-01 00:00:04', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '6', 'i', '2016-09-09 05:18:19', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '8', 'i', '2016-09-08 10:25:51', 't');
INSERT INTO "public"."in_out" VALUES ('24', '8', 'i', '2016-10-07 11:31:01', 't');
INSERT INTO "public"."in_out" VALUES ('24', '8', 'o', '2016-11-04 02:05:37', 't');
INSERT INTO "public"."in_out" VALUES ('24', '9', 'i', '2016-09-01 00:01:35', 't');
INSERT INTO "public"."in_out" VALUES ('24', '9', 'i', '2016-09-01 22:46:58', 't');
INSERT INTO "public"."in_out" VALUES ('24', '9', 'o', '2016-10-21 02:01:49', 't');
INSERT INTO "public"."in_out" VALUES ('24', '10', 'o', '2016-10-19 11:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '11', 'i', '2016-09-01 00:01:14', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '11', 'i', '2016-09-10 11:16:17', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '11', 'i', '2016-10-13 15:00:48', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '12', 'i', '2016-09-16 15:12:32', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '12', 'o', '2016-09-27 21:48:11', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '12', 'o', '2016-10-10 12:56:09', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '12', 'o', '2016-10-22 20:58:40', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '13', 'o', '2016-09-29 18:40:46', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '14', 'i', '2016-09-02 23:03:56', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '15', 'o', '2016-09-01 21:15:33', 't');
INSERT INTO "public"."in_out" VALUES ('24', '15', 'o', '2016-09-09 12:52:57', 't');
INSERT INTO "public"."in_out" VALUES ('24', '15', 'i', '2016-11-03 02:52:48', 't');
INSERT INTO "public"."in_out" VALUES ('24', '16', 'o', '2016-09-12 07:56:06', 't');
INSERT INTO "public"."in_out" VALUES ('24', '16', 'i', '2016-11-13 00:41:37', 't');
INSERT INTO "public"."in_out" VALUES ('24', '18', 'o', '2016-10-04 21:52:58', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '19', 'o', '2016-09-01 00:01:13', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '19', 'o', '2016-09-01 01:42:04', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '19', 'o', '2016-09-21 10:17:38', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '19', 'i', '2016-10-23 08:32:46', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '20', 'i', '2016-10-28 21:57:43', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '20', 'i', '2016-10-29 10:02:38', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '21', 'i', '2016-09-21 06:49:44', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '21', 'i', '2016-10-24 19:03:06', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '22', 'i', '2016-10-16 20:26:25', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '22', 'o', '2016-11-14 12:07:39', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '24', 'i', '2016-09-13 18:17:26', 't');
INSERT INTO "public"."in_out" VALUES ('24', '24', 'i', '2016-09-14 19:12:25', 't');
INSERT INTO "public"."in_out" VALUES ('24', '24', 'o', '2016-09-25 02:58:26', 't');
INSERT INTO "public"."in_out" VALUES ('24', '24', 'i', '2016-10-31 20:31:38', 't');
INSERT INTO "public"."in_out" VALUES ('24', '26', 'o', '2016-09-01 00:01:07', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '27', 'i', '2016-09-01 02:22:44', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '28', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '28', 'i', '2016-09-01 19:02:45', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '28', 'i', '2016-10-20 13:20:16', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '31', 'i', '2016-11-04 06:58:30', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '31', 'o', '2016-11-09 04:43:59', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '31', 'o', '2016-11-14 16:57:23', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '32', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '33', 'o', '2016-09-01 23:00:00', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '34', 'o', '2016-10-25 00:09:43', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '34', 'i', '2016-10-29 21:13:12', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '35', 'i', '2016-10-26 03:04:02', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '35', 'i', '2016-11-11 05:56:27', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '36', 'o', '2016-09-02 03:38:13', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '36', 'i', '2016-09-05 17:13:32', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '37', 'o', '2016-09-21 01:34:49', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '37', 'i', '2016-10-18 05:57:59', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '38', 'i', '2016-09-01 00:00:43', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '38', 'i', '2016-11-16 00:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '40', 'o', '2016-09-01 02:07:30', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '41', 'i', '2016-09-22 17:38:09', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '41', 'o', '2016-11-16 17:34:19', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '44', 'i', '2016-09-01 00:12:03', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '44', 'i', '2016-09-17 12:06:37', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '45', 'i', '2016-10-08 09:34:13', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '45', 'o', '2016-10-29 06:18:53', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '46', 'o', '2016-09-01 00:00:56', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '46', 'o', '2016-09-01 00:06:40', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '46', 'o', '2016-09-01 00:07:40', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '47', 'o', '2016-11-09 08:54:32', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '48', 'i', '2016-09-01 00:00:09', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '48', 'o', '2016-09-01 02:30:03', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '49', 'i', '2016-11-01 06:44:36', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '50', 'o', '2016-11-16 19:41:13', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '52', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('24', '52', 'o', '2016-09-01 23:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '2', 'o', '2016-09-20 05:30:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '2', 'i', '2016-10-11 11:10:58', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '3', 'i', '2016-11-16 00:00:00', 't');
INSERT INTO "public"."in_out" VALUES ('25', '4', 'i', '2016-10-13 17:43:53', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '5', 'o', '2016-09-01 00:59:59', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '5', 'o', '2016-09-05 03:39:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '5', 'o', '2016-09-16 17:22:49', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '6', 'o', '2016-09-01 23:59:00', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '6', 'i', '2016-09-07 11:01:26', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '7', 'o', '2016-09-01 01:21:34', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '9', 'i', '2016-09-01 00:01:22', 't');
INSERT INTO "public"."in_out" VALUES ('25', '9', 'o', '2016-10-08 12:35:10', 't');
INSERT INTO "public"."in_out" VALUES ('25', '10', 'i', '2016-09-25 18:44:49', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '11', 'o', '2016-10-04 08:54:39', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '12', 'o', '2016-11-04 10:50:06', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '13', 'o', '2016-09-01 21:00:14', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '13', 'i', '2016-10-25 16:09:49', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '14', 'o', '2016-10-12 03:05:26', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '14', 'o', '2016-10-20 13:04:02', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '15', 'o', '2016-10-16 05:01:02', 't');
INSERT INTO "public"."in_out" VALUES ('25', '16', 'o', '2016-09-10 09:03:29', 't');
INSERT INTO "public"."in_out" VALUES ('25', '16', 'o', '2016-09-18 02:58:06', 't');
INSERT INTO "public"."in_out" VALUES ('25', '16', 'o', '2016-09-23 10:53:59', 't');
INSERT INTO "public"."in_out" VALUES ('25', '17', 'i', '2016-09-01 00:01:51', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '17', 'o', '2016-09-10 11:56:23', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '17', 'i', '2016-11-08 19:15:07', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '18', 'i', '2016-09-01 00:00:10', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '18', 'i', '2016-09-01 00:00:11', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '18', 'i', '2016-10-05 22:45:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '19', 'i', '2016-09-01 00:14:08', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '20', 'i', '2016-09-01 00:01:11', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '20', 'o', '2016-11-07 07:07:40', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '21', 'i', '2016-10-30 15:42:52', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '22', 'i', '2016-09-03 16:58:21', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '23', 'i', '2016-09-10 05:50:11', 't');
INSERT INTO "public"."in_out" VALUES ('25', '23', 'i', '2016-11-14 00:48:03', 't');
INSERT INTO "public"."in_out" VALUES ('25', '25', 'o', '2016-09-06 17:49:34', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '25', 'o', '2016-10-10 06:17:23', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '26', 'i', '2016-10-05 08:50:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '27', 'i', '2016-10-02 09:08:07', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '27', 'o', '2016-11-15 18:06:42', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '28', 'i', '2016-09-18 00:39:04', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '30', 'o', '2016-09-01 00:11:38', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '30', 'o', '2016-09-17 01:21:22', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '30', 'o', '2016-10-05 18:35:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '30', 'o', '2016-11-16 01:26:29', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '31', 'i', '2016-09-01 01:11:54', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '32', 'i', '2016-11-16 23:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '33', 'i', '2016-09-01 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '33', 'i', '2016-11-14 03:06:54', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '34', 'i', '2016-09-01 00:36:18', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '35', 'i', '2016-09-22 01:42:28', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '37', 'i', '2016-09-08 20:03:51', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '38', 'i', '2016-10-13 13:59:43', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '39', 'o', '2016-09-01 00:07:20', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '39', 'i', '2016-09-01 06:25:30', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '39', 'i', '2016-09-05 03:30:04', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '39', 'o', '2016-09-09 16:34:20', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '39', 'o', '2016-11-08 19:55:32', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '40', 'o', '2016-09-22 04:12:12', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '40', 'o', '2016-11-14 21:06:24', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '40', 'o', '2016-11-16 00:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '42', 'i', '2016-11-05 05:30:36', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '43', 'i', '2016-09-01 00:00:02', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '43', 'i', '2016-09-02 17:32:56', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '43', 'i', '2016-09-11 20:34:08', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '43', 'i', '2016-10-22 12:39:06', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '44', 'i', '2016-09-01 00:00:30', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '44', 'o', '2016-09-12 23:21:31', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '45', 'o', '2016-09-01 17:45:55', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '46', 'i', '2016-09-22 22:34:34', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '46', 'o', '2016-10-10 04:42:45', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '47', 'o', '2016-09-19 21:51:31', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '47', 'o', '2016-11-05 00:56:13', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '47', 'o', '2016-11-16 01:30:11', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '48', 'i', '2016-10-04 13:21:14', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '49', 'o', '2016-09-18 01:38:52', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '49', 'i', '2016-09-20 10:28:18', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '50', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '50', 'o', '2016-10-08 10:41:12', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '51', 'o', '2016-10-25 18:37:18', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '52', 'i', '2016-09-05 06:47:55', 'f');
INSERT INTO "public"."in_out" VALUES ('25', '52', 'i', '2016-11-02 11:02:30', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '1', 'i', '2016-10-22 20:45:07', 't');
INSERT INTO "public"."in_out" VALUES ('26', '3', 'o', '2016-09-01 16:30:01', 't');
INSERT INTO "public"."in_out" VALUES ('26', '3', 'o', '2016-09-22 21:18:39', 't');
INSERT INTO "public"."in_out" VALUES ('26', '3', 'i', '2016-11-15 18:06:14', 't');
INSERT INTO "public"."in_out" VALUES ('26', '6', 'o', '2016-09-01 00:01:39', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '7', 'o', '2016-09-05 05:11:16', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '7', 'o', '2016-11-10 20:52:27', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '8', 'i', '2016-09-01 00:01:56', 't');
INSERT INTO "public"."in_out" VALUES ('26', '8', 'o', '2016-10-02 10:34:30', 't');
INSERT INTO "public"."in_out" VALUES ('26', '9', 'i', '2016-09-01 00:00:06', 't');
INSERT INTO "public"."in_out" VALUES ('26', '9', 'i', '2016-09-03 09:07:43', 't');
INSERT INTO "public"."in_out" VALUES ('26', '9', 'o', '2016-09-17 18:31:12', 't');
INSERT INTO "public"."in_out" VALUES ('26', '9', 'i', '2016-10-05 14:28:48', 't');
INSERT INTO "public"."in_out" VALUES ('26', '10', 'i', '2016-09-01 00:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '10', 'i', '2016-09-01 00:13:07', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '10', 'i', '2016-09-05 09:16:25', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '11', 'o', '2016-09-01 00:01:26', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '12', 'i', '2016-09-01 00:00:09', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '13', 'o', '2016-09-09 12:53:00', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '13', 'i', '2016-09-11 01:33:34', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '13', 'o', '2016-09-21 17:32:35', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '14', 'o', '2016-09-01 23:13:50', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '14', 'i', '2016-09-02 20:45:47', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '15', 'o', '2016-09-01 00:16:02', 't');
INSERT INTO "public"."in_out" VALUES ('26', '17', 'o', '2016-09-01 01:39:22', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '17', 'i', '2016-09-06 01:15:26', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '19', 'i', '2016-11-11 13:42:07', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '20', 'i', '2016-10-15 18:19:08', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '21', 'o', '2016-09-01 00:00:06', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '21', 'i', '2016-09-09 00:42:19', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '21', 'o', '2016-11-06 13:49:49', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '21', 'o', '2016-11-16 00:00:59', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '22', 'i', '2016-10-16 19:40:51', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '23', 'o', '2016-09-01 00:01:20', 't');
INSERT INTO "public"."in_out" VALUES ('26', '23', 'i', '2016-09-16 23:20:50', 't');
INSERT INTO "public"."in_out" VALUES ('26', '24', 'o', '2016-09-16 21:00:04', 't');
INSERT INTO "public"."in_out" VALUES ('26', '24', 'i', '2016-11-15 22:27:45', 't');
INSERT INTO "public"."in_out" VALUES ('26', '25', 'o', '2016-09-01 02:24:01', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '25', 'i', '2016-09-08 08:12:58', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '26', 'o', '2016-09-20 11:51:01', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '26', 'i', '2016-10-05 08:09:21', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '26', 'i', '2016-10-10 16:04:08', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '28', 'i', '2016-09-20 08:44:28', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '28', 'i', '2016-11-16 23:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '29', 'i', '2016-09-18 08:24:45', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '29', 'o', '2016-09-26 15:03:27', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '29', 'o', '2016-10-24 04:05:56', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '29', 'i', '2016-11-16 00:46:12', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '30', 'i', '2016-11-03 13:26:39', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '30', 'i', '2016-11-11 17:48:49', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '31', 'i', '2016-09-02 09:54:25', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '32', 'o', '2016-09-01 00:00:16', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '32', 'i', '2016-09-01 00:01:00', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '32', 'o', '2016-10-27 16:05:12', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '32', 'i', '2016-10-30 05:39:00', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '32', 'o', '2016-11-09 02:07:37', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '34', 'i', '2016-09-17 00:39:20', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '34', 'i', '2016-11-09 00:13:20', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '35', 'o', '2016-09-01 00:00:13', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '35', 'o', '2016-10-30 23:30:06', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '36', 'o', '2016-09-03 08:25:38', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '36', 'o', '2016-09-04 16:36:54', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '36', 'o', '2016-11-08 05:51:51', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '38', 'o', '2016-10-08 13:20:58', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '39', 'i', '2016-09-01 00:00:03', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '40', 'i', '2016-09-24 13:43:26', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '40', 'o', '2016-10-09 06:20:40', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '40', 'i', '2016-10-10 03:35:08', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '40', 'o', '2016-11-16 00:00:01', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '42', 'i', '2016-11-09 21:41:09', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '43', 'i', '2016-09-26 23:09:20', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '44', 'o', '2016-09-01 23:59:01', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '45', 'o', '2016-09-01 10:12:15', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '45', 'i', '2016-10-28 10:52:45', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '47', 'o', '2016-09-01 10:10:15', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '47', 'i', '2016-09-12 19:46:13', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '48', 'o', '2016-09-01 00:00:29', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '48', 'i', '2016-09-02 03:53:48', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '48', 'i', '2016-10-27 17:44:57', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '48', 'i', '2016-11-05 12:05:48', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '49', 'i', '2016-10-20 16:47:21', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '50', 'o', '2016-10-14 03:10:56', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '51', 'o', '2016-10-03 06:19:47', 'f');
INSERT INTO "public"."in_out" VALUES ('26', '52', 'o', '2016-09-08 01:46:00', 'f');

-- ----------------------------
-- Table structure for lives_in
-- ----------------------------
DROP TABLE IF EXISTS "public"."lives_in" CASCADE;
CREATE TABLE "public"."lives_in" (
"person_id" int4 NOT NULL,
"apartment_number" int4 NOT NULL,
"building_id" int4 NOT NULL,
"date_time_start" timestamp(6) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of lives_in
-- ----------------------------
INSERT INTO "public"."lives_in" VALUES ('1', '100', '1', '2016-08-30 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('2', '100', '1', '2016-08-30 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('3', '100', '1', '2016-08-26 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('4', '100', '1', '2016-08-21 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('5', '100', '1', '2016-08-16 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('6', '100', '2', '2016-08-19 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('7', '100', '2', '2016-08-20 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('8', '100', '3', '2016-08-17 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('9', '100', '4', '2016-08-27 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('10', '101', '1', '2016-08-30 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('21', '101', '2', '2015-06-21 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('22', '101', '3', '2014-12-13 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('23', '101', '4', '2014-10-10 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('24', '102', '1', '2014-10-22 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('25', '102', '2', '2016-02-06 00:00:00');
INSERT INTO "public"."lives_in" VALUES ('26', '102', '3', '2015-04-20 00:00:00');

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS "public"."person" CASCADE;
CREATE TABLE "public"."person" (
"person_id" int4 DEFAULT nextval('person_person_id_seq'::regclass) NOT NULL,
"first_name" varchar(50) COLLATE "default" NOT NULL,
"middle_name" varchar(50) COLLATE "default",
"family_name" varchar(50) COLLATE "default" NOT NULL,
"date_of_birth" timestamp(6) NOT NULL,
"gender" char(1) COLLATE "default" NOT NULL,
"main_document_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO "public"."person" VALUES ('1', 'Luciano', null, 'Madrid', '1995-10-22 00:00:00', 'M', '1');
INSERT INTO "public"."person" VALUES ('2', 'Aurelio', null, 'Shay', '1984-02-20 00:00:00', 'M', '2');
INSERT INTO "public"."person" VALUES ('3', 'Elden', null, 'Janes', '1998-07-04 00:00:00', 'M', '3');
INSERT INTO "public"."person" VALUES ('4', 'Shon', null, 'Valdes', '1987-06-25 00:00:00', 'M', '4');
INSERT INTO "public"."person" VALUES ('5', 'Harris', null, 'Carman', '1986-01-06 00:00:00', 'M', '5');
INSERT INTO "public"."person" VALUES ('6', 'Joesph', null, 'Shea', '1990-09-28 00:00:00', 'M', '6');
INSERT INTO "public"."person" VALUES ('7', 'Claud', null, 'Bartlett', '1995-05-30 00:00:00', 'M', '7');
INSERT INTO "public"."person" VALUES ('8', 'Willard', null, 'Carmichael', '1997-02-26 00:00:00', 'M', '8');
INSERT INTO "public"."person" VALUES ('9', 'Harrison', null, 'Randall', '1988-11-20 00:00:00', 'M', '9');
INSERT INTO "public"."person" VALUES ('10', 'Joey', null, 'Valdez', '1994-05-28 00:00:00', 'M', '10');
INSERT INTO "public"."person" VALUES ('11', 'Noble', null, 'Mosher', '1995-06-28 00:00:00', 'M', '11');
INSERT INTO "public"."person" VALUES ('12', 'Sidney', null, 'Goforth', '1994-03-01 00:00:00', 'M', '12');
INSERT INTO "public"."person" VALUES ('13', 'Curtis', null, 'Shearer', '1992-06-10 00:00:00', 'M', '13');
INSERT INTO "public"."person" VALUES ('14', 'Lucien', null, 'Valencia', '1994-08-25 00:00:00', 'M', '14');
INSERT INTO "public"."person" VALUES ('15', 'Noe', null, 'Bartley', '1987-06-20 00:00:00', 'M', '15');
INSERT INTO "public"."person" VALUES ('16', 'Austin', null, 'Randle', '1992-03-23 00:00:00', 'M', '16');
INSERT INTO "public"."person" VALUES ('17', 'Claude', null, 'Madrigal', '1992-11-09 00:00:00', 'M', '17');
INSERT INTO "public"."person" VALUES ('18', 'Harry', null, 'Carmona', '1994-05-01 00:00:00', 'M', '18');
INSERT INTO "public"."person" VALUES ('19', 'Lucio', null, 'Barton', '1992-02-09 00:00:00', 'M', '19');
INSERT INTO "public"."person" VALUES ('20', 'Noel', null, 'Dowdy', '1946-01-08 00:00:00', 'M', '20');
INSERT INTO "public"."person" VALUES ('21', 'John', null, 'Sheehan', '1948-03-13 00:00:00', 'M', '21');
INSERT INTO "public"."person" VALUES ('22', 'William', null, 'Jansen', '1990-12-23 00:00:00', 'M', '22');
INSERT INTO "public"."person" VALUES ('23', 'Harvey', null, 'Madsen', '1994-11-22 00:00:00', 'M', '23');
INSERT INTO "public"."person" VALUES ('24', 'Eldon', null, 'Mosier', '1989-12-07 00:00:00', 'M', '24');
INSERT INTO "public"."person" VALUES ('25', 'Silas', null, 'Randolph', '1997-12-07 00:00:00', 'M', '25');
INSERT INTO "public"."person" VALUES ('26', 'Lucius', null, 'Carnahan', '1997-01-09 00:00:00', 'M', '26');

-- ----------------------------
-- Table structure for person_has_ep_set
-- ----------------------------
DROP TABLE IF EXISTS "public"."person_has_ep_set" CASCADE;
CREATE TABLE "public"."person_has_ep_set" (
"person_id" int4 NOT NULL,
"ep_set_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of person_has_ep_set
-- ----------------------------
INSERT INTO "public"."person_has_ep_set" VALUES ('1', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('1', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('2', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('2', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('3', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('3', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('4', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('4', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('5', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('5', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('6', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('6', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('7', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('7', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('8', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('8', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('9', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('9', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('10', '1');
INSERT INTO "public"."person_has_ep_set" VALUES ('10', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('11', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('12', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('13', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('14', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('15', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('16', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('17', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('18', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('19', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('20', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('21', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('22', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('23', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('24', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('25', '4');
INSERT INTO "public"."person_has_ep_set" VALUES ('26', '4');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student" CASCADE;
CREATE TABLE "public"."student" (
"person_id" int4 NOT NULL,
"scholarship" numeric(8,2) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO "public"."student" VALUES ('1', '15000.00');
INSERT INTO "public"."student" VALUES ('2', '10000.00');
INSERT INTO "public"."student" VALUES ('3', '24000.00');
INSERT INTO "public"."student" VALUES ('4', '10000.00');
INSERT INTO "public"."student" VALUES ('5', '12000.00');
INSERT INTO "public"."student" VALUES ('6', '15000.00');
INSERT INTO "public"."student" VALUES ('7', '40000.00');
INSERT INTO "public"."student" VALUES ('8', '12000.00');
INSERT INTO "public"."student" VALUES ('9', '24000.00');
INSERT INTO "public"."student" VALUES ('10', '40000.00');

-- ----------------------------
-- Table structure for transaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."transaction" CASCADE;
CREATE TABLE "public"."transaction" (
"transaction_id" int4 DEFAULT nextval('transaction_transaction_id_seq'::regclass) NOT NULL,
"transaction_type_id" int4 NOT NULL,
"amount" numeric(8,2) NOT NULL,
"account_id" int4 NOT NULL,
"date_time" timestamp(6) NOT NULL,
"description" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of transaction
-- ----------------------------
INSERT INTO "public"."transaction" VALUES ('1', '4', '15000.00', '19', '2016-09-20 11:17:31', null);
INSERT INTO "public"."transaction" VALUES ('2', '4', '10000.00', '20', '2016-09-20 01:49:27', null);
INSERT INTO "public"."transaction" VALUES ('3', '4', '24000.00', '1', '2016-09-20 22:58:54', null);
INSERT INTO "public"."transaction" VALUES ('4', '4', '10000.00', '10', '2016-09-20 03:16:54', null);
INSERT INTO "public"."transaction" VALUES ('5', '4', '12000.00', '16', '2016-09-20 05:54:48', null);
INSERT INTO "public"."transaction" VALUES ('6', '4', '15000.00', '17', '2016-09-20 19:16:21', null);
INSERT INTO "public"."transaction" VALUES ('7', '4', '40000.00', '9', '2016-09-20 17:22:20', null);
INSERT INTO "public"."transaction" VALUES ('8', '4', '12000.00', '6', '2016-09-20 06:39:35', null);
INSERT INTO "public"."transaction" VALUES ('9', '4', '24000.00', '3', '2016-09-20 01:28:50', null);
INSERT INTO "public"."transaction" VALUES ('10', '4', '40000.00', '18', '2016-09-20 00:00:06', null);
INSERT INTO "public"."transaction" VALUES ('11', '4', '15000.00', '6', '2016-10-20 14:38:13', null);
INSERT INTO "public"."transaction" VALUES ('12', '4', '10000.00', '17', '2016-10-20 00:04:59', null);
INSERT INTO "public"."transaction" VALUES ('13', '4', '24000.00', '1', '2016-10-20 15:55:00', null);
INSERT INTO "public"."transaction" VALUES ('14', '4', '10000.00', '10', '2016-10-20 18:38:33', null);
INSERT INTO "public"."transaction" VALUES ('15', '4', '12000.00', '18', '2016-10-20 00:00:06', null);
INSERT INTO "public"."transaction" VALUES ('16', '4', '15000.00', '19', '2016-10-20 15:24:12', null);
INSERT INTO "public"."transaction" VALUES ('17', '4', '40000.00', '20', '2016-10-20 00:01:04', null);
INSERT INTO "public"."transaction" VALUES ('18', '4', '12000.00', '16', '2016-10-20 07:30:59', null);
INSERT INTO "public"."transaction" VALUES ('19', '4', '24000.00', '9', '2016-10-20 20:52:23', null);
INSERT INTO "public"."transaction" VALUES ('20', '4', '40000.00', '3', '2016-10-20 00:04:45', null);
INSERT INTO "public"."transaction" VALUES ('21', '4', '15000.00', '16', '2016-11-20 15:50:11', null);
INSERT INTO "public"."transaction" VALUES ('22', '4', '10000.00', '9', '2016-11-20 15:36:04', null);
INSERT INTO "public"."transaction" VALUES ('23', '4', '24000.00', '6', '2016-11-20 23:03:52', null);
INSERT INTO "public"."transaction" VALUES ('24', '4', '10000.00', '19', '2016-11-20 01:43:31', null);
INSERT INTO "public"."transaction" VALUES ('25', '4', '12000.00', '20', '2016-11-20 10:47:26', null);
INSERT INTO "public"."transaction" VALUES ('26', '4', '15000.00', '10', '2016-11-20 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('27', '4', '40000.00', '17', '2016-11-20 00:00:08', null);
INSERT INTO "public"."transaction" VALUES ('28', '4', '12000.00', '18', '2016-11-20 05:00:01', null);
INSERT INTO "public"."transaction" VALUES ('29', '4', '24000.00', '1', '2016-11-20 19:26:54', null);
INSERT INTO "public"."transaction" VALUES ('30', '4', '40000.00', '3', '2016-11-20 07:13:46', null);
INSERT INTO "public"."transaction" VALUES ('31', '3', '30000.00', '33', '2016-09-20 15:47:27', null);
INSERT INTO "public"."transaction" VALUES ('32', '3', '25000.00', '36', '2016-09-20 07:31:11', null);
INSERT INTO "public"."transaction" VALUES ('33', '3', '20000.00', '34', '2016-09-20 00:09:16', null);
INSERT INTO "public"."transaction" VALUES ('34', '3', '40000.00', '32', '2016-09-20 09:55:04', null);
INSERT INTO "public"."transaction" VALUES ('35', '3', '25000.00', '35', '2016-09-20 00:10:20', null);
INSERT INTO "public"."transaction" VALUES ('36', '3', '30000.00', '31', '2016-09-20 02:16:01', null);
INSERT INTO "public"."transaction" VALUES ('37', '3', '30000.00', '35', '2016-10-20 22:38:44', null);
INSERT INTO "public"."transaction" VALUES ('38', '3', '25000.00', '34', '2016-10-20 00:01:21', null);
INSERT INTO "public"."transaction" VALUES ('39', '3', '20000.00', '36', '2016-10-20 00:08:38', null);
INSERT INTO "public"."transaction" VALUES ('40', '3', '40000.00', '33', '2016-10-20 00:00:06', null);
INSERT INTO "public"."transaction" VALUES ('41', '3', '25000.00', '31', '2016-10-20 20:57:23', null);
INSERT INTO "public"."transaction" VALUES ('42', '3', '30000.00', '32', '2016-10-20 17:19:17', null);
INSERT INTO "public"."transaction" VALUES ('43', '3', '30000.00', '31', '2016-11-20 21:49:08', null);
INSERT INTO "public"."transaction" VALUES ('44', '3', '25000.00', '36', '2016-11-20 00:56:28', null);
INSERT INTO "public"."transaction" VALUES ('45', '3', '20000.00', '34', '2016-11-20 18:38:27', null);
INSERT INTO "public"."transaction" VALUES ('46', '3', '40000.00', '33', '2016-11-20 00:06:39', null);
INSERT INTO "public"."transaction" VALUES ('47', '3', '25000.00', '35', '2016-11-20 15:55:36', null);
INSERT INTO "public"."transaction" VALUES ('48', '3', '30000.00', '32', '2016-11-20 08:44:44', null);
INSERT INTO "public"."transaction" VALUES ('49', '1', '-2000.00', '36', '2016-09-20 06:48:19', null);
INSERT INTO "public"."transaction" VALUES ('50', '1', '-2000.00', '17', '2016-09-20 02:33:08', null);
INSERT INTO "public"."transaction" VALUES ('52', '1', '-2000.00', '34', '2016-09-20 00:05:24', null);
INSERT INTO "public"."transaction" VALUES ('53', '1', '-2000.00', '6', '2016-09-20 06:35:12', null);
INSERT INTO "public"."transaction" VALUES ('54', '1', '-2000.00', '32', '2016-09-20 06:04:41', null);
INSERT INTO "public"."transaction" VALUES ('55', '1', '-2000.00', '3', '2016-09-20 23:33:00', null);
INSERT INTO "public"."transaction" VALUES ('56', '1', '-2000.00', '20', '2016-09-20 20:54:41', null);
INSERT INTO "public"."transaction" VALUES ('57', '1', '-2000.00', '35', '2016-09-20 22:51:48', null);
INSERT INTO "public"."transaction" VALUES ('58', '1', '-2000.00', '18', '2016-09-20 20:09:21', null);
INSERT INTO "public"."transaction" VALUES ('59', '1', '-2000.00', '33', '2016-09-20 07:46:22', null);
INSERT INTO "public"."transaction" VALUES ('60', '1', '-2000.00', '1', '2016-09-20 12:22:51', null);
INSERT INTO "public"."transaction" VALUES ('61', '1', '-2000.00', '9', '2016-09-20 00:35:09', null);
INSERT INTO "public"."transaction" VALUES ('63', '1', '-2000.00', '31', '2016-09-20 01:15:19', null);
INSERT INTO "public"."transaction" VALUES ('64', '1', '-2000.00', '10', '2016-09-20 19:38:05', null);
INSERT INTO "public"."transaction" VALUES ('65', '1', '-2000.00', '16', '2016-09-20 08:03:48', null);
INSERT INTO "public"."transaction" VALUES ('67', '1', '-2000.00', '19', '2016-09-20 23:05:50', null);
INSERT INTO "public"."transaction" VALUES ('70', '1', '-2000.00', '19', '2016-10-20 12:53:06', null);
INSERT INTO "public"."transaction" VALUES ('71', '1', '-2000.00', '32', '2016-10-20 02:03:13', null);
INSERT INTO "public"."transaction" VALUES ('72', '1', '-2000.00', '1', '2016-10-20 07:44:58', null);
INSERT INTO "public"."transaction" VALUES ('74', '1', '-2000.00', '36', '2016-10-20 00:31:16', null);
INSERT INTO "public"."transaction" VALUES ('75', '1', '-2000.00', '17', '2016-10-20 19:19:21', null);
INSERT INTO "public"."transaction" VALUES ('76', '1', '-2000.00', '20', '2016-10-20 18:39:21', null);
INSERT INTO "public"."transaction" VALUES ('77', '1', '-2000.00', '10', '2016-10-20 01:03:49', null);
INSERT INTO "public"."transaction" VALUES ('79', '1', '-2000.00', '18', '2016-10-20 00:01:53', null);
INSERT INTO "public"."transaction" VALUES ('81', '1', '-2000.00', '35', '2016-10-20 00:06:12', null);
INSERT INTO "public"."transaction" VALUES ('82', '1', '-2000.00', '16', '2016-10-20 06:14:52', null);
INSERT INTO "public"."transaction" VALUES ('83', '1', '-2000.00', '33', '2016-10-20 11:16:59', null);
INSERT INTO "public"."transaction" VALUES ('86', '1', '-2000.00', '6', '2016-10-20 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('87', '1', '-2000.00', '3', '2016-10-20 01:34:01', null);
INSERT INTO "public"."transaction" VALUES ('88', '1', '-2000.00', '9', '2016-10-20 00:00:53', null);
INSERT INTO "public"."transaction" VALUES ('89', '1', '-2000.00', '31', '2016-10-20 00:07:08', null);
INSERT INTO "public"."transaction" VALUES ('90', '1', '-2000.00', '34', '2016-10-20 12:50:40', null);
INSERT INTO "public"."transaction" VALUES ('91', '1', '-2000.00', '33', '2016-11-20 00:08:38', null);
INSERT INTO "public"."transaction" VALUES ('92', '1', '-2000.00', '9', '2016-11-20 04:31:16', null);
INSERT INTO "public"."transaction" VALUES ('93', '1', '-2000.00', '17', '2016-11-20 04:48:47', null);
INSERT INTO "public"."transaction" VALUES ('94', '1', '-2000.00', '36', '2016-11-20 01:43:09', null);
INSERT INTO "public"."transaction" VALUES ('95', '1', '-2000.00', '31', '2016-11-20 16:04:20', null);
INSERT INTO "public"."transaction" VALUES ('96', '1', '-2000.00', '20', '2016-11-20 11:39:54', null);
INSERT INTO "public"."transaction" VALUES ('99', '1', '-2000.00', '3', '2016-11-20 14:49:12', null);
INSERT INTO "public"."transaction" VALUES ('100', '1', '-2000.00', '10', '2016-11-20 14:36:42', null);
INSERT INTO "public"."transaction" VALUES ('101', '1', '-2000.00', '18', '2016-11-20 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('102', '1', '-2000.00', '1', '2016-11-20 01:20:09', null);
INSERT INTO "public"."transaction" VALUES ('106', '1', '-2000.00', '34', '2016-11-20 01:13:42', null);
INSERT INTO "public"."transaction" VALUES ('107', '1', '-2000.00', '32', '2016-11-20 16:50:06', null);
INSERT INTO "public"."transaction" VALUES ('108', '1', '-2000.00', '6', '2016-11-20 21:13:11', null);
INSERT INTO "public"."transaction" VALUES ('109', '1', '-2000.00', '35', '2016-11-20 16:21:12', null);
INSERT INTO "public"."transaction" VALUES ('110', '1', '-2000.00', '16', '2016-11-20 01:01:52', null);
INSERT INTO "public"."transaction" VALUES ('111', '1', '-2000.00', '19', '2016-11-20 00:38:53', null);
INSERT INTO "public"."transaction" VALUES ('113', '1', '1847.69', '19', '2016-09-20 04:01:35', null);
INSERT INTO "public"."transaction" VALUES ('116', '1', '2018.00', '34', '2016-09-20 17:59:40', null);
INSERT INTO "public"."transaction" VALUES ('118', '1', '1892.00', '6', '2016-09-20 21:17:21', null);
INSERT INTO "public"."transaction" VALUES ('119', '1', '1811.62', '17', '2016-09-20 05:26:01', null);
INSERT INTO "public"."transaction" VALUES ('120', '1', '2133.72', '3', '2016-09-20 00:08:00', null);
INSERT INTO "public"."transaction" VALUES ('121', '1', '1854.52', '9', '2016-09-20 00:21:28', null);
INSERT INTO "public"."transaction" VALUES ('122', '1', '1901.48', '32', '2016-09-20 05:29:52', null);
INSERT INTO "public"."transaction" VALUES ('123', '1', '2115.02', '1', '2016-09-20 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('125', '1', '2043.00', '35', '2016-09-20 09:40:14', null);
INSERT INTO "public"."transaction" VALUES ('126', '1', '1802.00', '20', '2016-09-20 05:48:34', null);
INSERT INTO "public"."transaction" VALUES ('127', '1', '2044.28', '10', '2016-09-20 23:27:48', null);
INSERT INTO "public"."transaction" VALUES ('128', '1', '1935.00', '33', '2016-09-20 08:30:26', null);
INSERT INTO "public"."transaction" VALUES ('129', '1', '2183.33', '18', '2016-09-20 05:22:10', null);
INSERT INTO "public"."transaction" VALUES ('130', '1', '1850.77', '36', '2016-09-20 00:10:41', null);
INSERT INTO "public"."transaction" VALUES ('131', '1', '1996.40', '31', '2016-09-20 19:11:32', null);
INSERT INTO "public"."transaction" VALUES ('132', '1', '1903.00', '16', '2016-09-20 00:01:39', null);
INSERT INTO "public"."transaction" VALUES ('133', '1', '1946.00', '20', '2016-10-20 13:28:47', null);
INSERT INTO "public"."transaction" VALUES ('134', '1', '2074.29', '36', '2016-10-20 04:21:36', null);
INSERT INTO "public"."transaction" VALUES ('135', '1', '1952.45', '18', '2016-10-20 02:37:43', null);
INSERT INTO "public"."transaction" VALUES ('136', '1', '2039.00', '16', '2016-10-20 12:32:41', null);
INSERT INTO "public"."transaction" VALUES ('137', '1', '2181.52', '19', '2016-10-20 04:37:06', null);
INSERT INTO "public"."transaction" VALUES ('138', '1', '1824.00', '10', '2016-10-20 17:52:34', null);
INSERT INTO "public"."transaction" VALUES ('139', '1', '2041.00', '3', '2016-10-20 00:12:08', null);
INSERT INTO "public"."transaction" VALUES ('141', '1', '2009.68', '1', '2016-10-20 20:57:59', null);
INSERT INTO "public"."transaction" VALUES ('142', '1', '2024.65', '17', '2016-10-20 12:49:31', null);
INSERT INTO "public"."transaction" VALUES ('144', '1', '2099.74', '6', '2016-10-20 08:27:09', null);
INSERT INTO "public"."transaction" VALUES ('145', '1', '2044.00', '9', '2016-10-20 14:41:20', null);
INSERT INTO "public"."transaction" VALUES ('149', '1', '2046.99', '34', '2016-10-20 13:22:21', null);
INSERT INTO "public"."transaction" VALUES ('150', '1', '2147.75', '32', '2016-10-20 01:11:05', null);
INSERT INTO "public"."transaction" VALUES ('151', '1', '2191.00', '35', '2016-10-20 02:27:31', null);
INSERT INTO "public"."transaction" VALUES ('152', '1', '1824.00', '33', '2016-10-20 17:16:00', null);
INSERT INTO "public"."transaction" VALUES ('153', '1', '2123.00', '31', '2016-10-20 22:12:53', null);
INSERT INTO "public"."transaction" VALUES ('154', '1', '1835.00', '36', '2016-11-20 17:43:19', null);
INSERT INTO "public"."transaction" VALUES ('155', '1', '1920.72', '16', '2016-11-20 06:26:17', null);
INSERT INTO "public"."transaction" VALUES ('157', '1', '1928.20', '10', '2016-11-20 12:09:02', null);
INSERT INTO "public"."transaction" VALUES ('158', '1', '2030.33', '19', '2016-11-20 02:55:19', null);
INSERT INTO "public"."transaction" VALUES ('159', '1', '2062.38', '31', '2016-11-20 03:59:41', null);
INSERT INTO "public"."transaction" VALUES ('161', '1', '2069.00', '3', '2016-11-20 00:40:14', null);
INSERT INTO "public"."transaction" VALUES ('162', '1', '2177.23', '17', '2016-11-20 19:23:46', null);
INSERT INTO "public"."transaction" VALUES ('163', '1', '2075.93', '20', '2016-11-20 20:20:35', null);
INSERT INTO "public"."transaction" VALUES ('164', '1', '2036.09', '1', '2016-11-20 02:11:26', null);
INSERT INTO "public"."transaction" VALUES ('165', '1', '1998.23', '34', '2016-11-20 16:40:13', null);
INSERT INTO "public"."transaction" VALUES ('166', '1', '1810.00', '18', '2016-11-20 09:56:36', null);
INSERT INTO "public"."transaction" VALUES ('169', '1', '2150.69', '32', '2016-11-20 17:54:31', null);
INSERT INTO "public"."transaction" VALUES ('171', '1', '1975.14', '6', '2016-11-20 07:59:52', null);
INSERT INTO "public"."transaction" VALUES ('172', '1', '2084.00', '35', '2016-11-20 09:10:33', null);
INSERT INTO "public"."transaction" VALUES ('173', '1', '1813.84', '33', '2016-11-20 18:02:08', null);
INSERT INTO "public"."transaction" VALUES ('174', '1', '1817.49', '9', '2016-11-20 19:25:52', null);
INSERT INTO "public"."transaction" VALUES ('175', '2', '-582.83', '19', '2016-09-01 00:03:27', null);
INSERT INTO "public"."transaction" VALUES ('176', '2', '224.22', '17', '2016-09-10 15:39:03', null);
INSERT INTO "public"."transaction" VALUES ('177', '2', '496.07', '16', '2016-10-31 14:29:07', null);
INSERT INTO "public"."transaction" VALUES ('178', '2', '-372.37', '10', '2016-10-05 16:55:19', null);
INSERT INTO "public"."transaction" VALUES ('179', '2', '-505.05', '6', '2016-10-14 02:42:21', null);
INSERT INTO "public"."transaction" VALUES ('180', '2', '-1344.44', '20', '2016-09-01 01:45:11', null);
INSERT INTO "public"."transaction" VALUES ('181', '2', '543.05', '3', '2016-09-10 11:25:31', null);
INSERT INTO "public"."transaction" VALUES ('182', '2', '-0.68', '9', '2016-10-09 00:28:09', null);
INSERT INTO "public"."transaction" VALUES ('183', '2', '-0.40', '1', '2016-09-30 23:55:48', null);
INSERT INTO "public"."transaction" VALUES ('184', '2', '8.36', '18', '2016-09-01 00:03:32', null);
INSERT INTO "public"."transaction" VALUES ('185', '2', '-269.70', '10', '2016-09-23 04:34:57', null);
INSERT INTO "public"."transaction" VALUES ('186', '2', '-505.51', '3', '2016-09-01 10:42:44', null);
INSERT INTO "public"."transaction" VALUES ('187', '2', '-339.34', '16', '2016-10-14 20:37:30', null);
INSERT INTO "public"."transaction" VALUES ('188', '2', '1497.15', '1', '2016-09-20 15:43:59', null);
INSERT INTO "public"."transaction" VALUES ('189', '2', '768.08', '6', '2016-09-27 16:45:20', null);
INSERT INTO "public"."transaction" VALUES ('190', '2', '-1302.02', '18', '2016-09-09 21:32:32', null);
INSERT INTO "public"."transaction" VALUES ('191', '2', '-334.34', '20', '2016-10-16 15:39:55', null);
INSERT INTO "public"."transaction" VALUES ('192', '2', '411.04', '9', '2016-10-19 11:30:41', null);
INSERT INTO "public"."transaction" VALUES ('193', '2', '450.00', '17', '2016-11-07 01:19:29', null);
INSERT INTO "public"."transaction" VALUES ('194', '2', '-853.53', '19', '2016-10-02 12:46:40', null);
INSERT INTO "public"."transaction" VALUES ('195', '2', '257.03', '3', '2016-10-06 01:56:28', null);
INSERT INTO "public"."transaction" VALUES ('196', '2', '-80.66', '6', '2016-09-30 22:27:11', null);
INSERT INTO "public"."transaction" VALUES ('197', '2', '234.02', '16', '2016-10-16 22:24:53', null);
INSERT INTO "public"."transaction" VALUES ('198', '2', '-1565.65', '20', '2016-09-01 15:09:04', null);
INSERT INTO "public"."transaction" VALUES ('199', '2', '-506.07', '1', '2016-09-12 18:58:18', null);
INSERT INTO "public"."transaction" VALUES ('200', '2', '211.21', '18', '2016-09-11 12:20:45', null);
INSERT INTO "public"."transaction" VALUES ('201', '2', '-840.00', '9', '2016-09-01 00:00:09', null);
INSERT INTO "public"."transaction" VALUES ('202', '2', '231.23', '19', '2016-09-01 00:00:03', null);
INSERT INTO "public"."transaction" VALUES ('203', '2', '-520.21', '17', '2016-09-01 00:20:49', null);
INSERT INTO "public"."transaction" VALUES ('204', '2', '1986.99', '10', '2016-10-03 08:25:10', null);
INSERT INTO "public"."transaction" VALUES ('205', '2', '505.00', '17', '2016-10-06 08:29:57', null);
INSERT INTO "public"."transaction" VALUES ('206', '2', '-379.80', '19', '2016-09-01 00:14:21', null);
INSERT INTO "public"."transaction" VALUES ('207', '2', '401.40', '1', '2016-09-13 00:44:47', null);
INSERT INTO "public"."transaction" VALUES ('208', '2', '-8.59', '20', '2016-10-13 17:37:51', null);
INSERT INTO "public"."transaction" VALUES ('209', '2', '-431.32', '9', '2016-10-20 23:05:13', null);
INSERT INTO "public"."transaction" VALUES ('210', '2', '-270.71', '10', '2016-09-01 00:01:02', null);
INSERT INTO "public"."transaction" VALUES ('211', '2', '500.36', '18', '2016-10-03 03:34:26', null);
INSERT INTO "public"."transaction" VALUES ('212', '2', '-1394.95', '16', '2016-09-25 01:14:32', null);
INSERT INTO "public"."transaction" VALUES ('213', '2', '793.08', '6', '2016-10-05 07:40:32', null);
INSERT INTO "public"."transaction" VALUES ('214', '2', '-0.38', '3', '2016-09-01 00:01:06', null);
INSERT INTO "public"."transaction" VALUES ('215', '2', '0.00', '16', '2016-09-10 00:38:49', null);
INSERT INTO "public"."transaction" VALUES ('216', '2', '554.06', '20', '2016-09-01 01:02:15', null);
INSERT INTO "public"."transaction" VALUES ('217', '2', '-600.01', '3', '2016-09-12 18:39:52', null);
INSERT INTO "public"."transaction" VALUES ('218', '2', '-210.11', '1', '2016-09-01 00:00:05', null);
INSERT INTO "public"."transaction" VALUES ('219', '2', '-0.66', '9', '2016-09-27 11:59:09', null);
INSERT INTO "public"."transaction" VALUES ('220', '2', '1045.10', '19', '2016-09-01 00:29:16', null);
INSERT INTO "public"."transaction" VALUES ('221', '2', '0.35', '17', '2016-09-01 00:00:22', null);
INSERT INTO "public"."transaction" VALUES ('222', '2', '9.78', '6', '2016-10-03 09:33:57', null);
INSERT INTO "public"."transaction" VALUES ('223', '2', '-393.94', '10', '2016-11-02 03:31:19', null);
INSERT INTO "public"."transaction" VALUES ('224', '2', '88.83', '18', '2016-10-07 12:05:00', null);
INSERT INTO "public"."transaction" VALUES ('225', '2', '311.03', '10', '2016-09-01 00:00:30', null);
INSERT INTO "public"."transaction" VALUES ('226', '2', '412.41', '3', '2016-10-04 23:33:19', null);
INSERT INTO "public"."transaction" VALUES ('227', '2', '274.03', '1', '2016-09-20 18:05:59', null);
INSERT INTO "public"."transaction" VALUES ('228', '2', '0.49', '18', '2016-09-01 02:18:28', null);
INSERT INTO "public"."transaction" VALUES ('229', '2', '200.02', '19', '2016-10-21 12:04:42', null);
INSERT INTO "public"."transaction" VALUES ('230', '2', '-313.31', '9', '2016-10-09 21:50:11', null);
INSERT INTO "public"."transaction" VALUES ('231', '2', '449.04', '16', '2016-09-09 14:05:32', null);
INSERT INTO "public"."transaction" VALUES ('232', '2', '741.07', '17', '2016-09-23 21:52:28', null);
INSERT INTO "public"."transaction" VALUES ('233', '2', '1979.20', '20', '2016-10-19 22:48:44', null);
INSERT INTO "public"."transaction" VALUES ('234', '2', '-393.39', '6', '2016-09-10 10:24:09', null);
INSERT INTO "public"."transaction" VALUES ('235', '2', '340.03', '9', '2016-09-09 11:23:26', null);
INSERT INTO "public"."transaction" VALUES ('236', '2', '-42.73', '16', '2016-09-01 00:02:34', null);
INSERT INTO "public"."transaction" VALUES ('237', '2', '0.01', '10', '2016-10-13 03:08:42', null);
INSERT INTO "public"."transaction" VALUES ('238', '2', '497.05', '20', '2016-09-19 11:58:47', null);
INSERT INTO "public"."transaction" VALUES ('239', '2', '0.54', '1', '2016-09-01 17:09:31', null);
INSERT INTO "public"."transaction" VALUES ('240', '2', '314.03', '6', '2016-09-09 00:42:30', null);
INSERT INTO "public"."transaction" VALUES ('241', '2', '0.07', '18', '2016-09-11 12:14:50', null);
INSERT INTO "public"."transaction" VALUES ('242', '2', '-213.00', '17', '2016-10-26 20:34:02', null);
INSERT INTO "public"."transaction" VALUES ('243', '2', '291.03', '19', '2016-09-01 00:05:43', null);
INSERT INTO "public"."transaction" VALUES ('244', '2', '-258.59', '3', '2016-09-08 07:39:08', null);
INSERT INTO "public"."transaction" VALUES ('245', '2', '511.05', '9', '2016-09-27 23:30:38', null);
INSERT INTO "public"."transaction" VALUES ('246', '2', '-54.27', '3', '2016-09-23 12:03:31', null);
INSERT INTO "public"."transaction" VALUES ('247', '2', '-547.47', '6', '2016-09-01 00:10:47', null);
INSERT INTO "public"."transaction" VALUES ('248', '2', '-404.05', '16', '2016-10-11 23:24:18', null);
INSERT INTO "public"."transaction" VALUES ('249', '2', '-1770.70', '20', '2016-09-09 21:15:38', null);
INSERT INTO "public"."transaction" VALUES ('250', '2', '243.02', '1', '2016-09-01 00:00:48', null);
INSERT INTO "public"."transaction" VALUES ('251', '2', '-1910.10', '19', '2016-09-17 16:45:24', null);
INSERT INTO "public"."transaction" VALUES ('252', '2', '-310.10', '10', '2016-09-01 01:57:01', null);
INSERT INTO "public"."transaction" VALUES ('253', '2', '-1804.80', '17', '2016-09-22 01:58:27', null);
INSERT INTO "public"."transaction" VALUES ('254', '2', '-424.00', '18', '2016-09-30 17:13:23', null);
INSERT INTO "public"."transaction" VALUES ('255', '2', '-244.45', '16', '2016-09-01 01:57:05', null);
INSERT INTO "public"."transaction" VALUES ('256', '2', '-761.61', '19', '2016-09-02 05:33:32', null);
INSERT INTO "public"."transaction" VALUES ('257', '2', '-554.55', '20', '2016-09-01 00:00:13', null);
INSERT INTO "public"."transaction" VALUES ('258', '2', '-306.00', '1', '2016-09-01 00:00:23', null);
INSERT INTO "public"."transaction" VALUES ('259', '2', '1180.18', '6', '2016-09-20 18:14:56', null);
INSERT INTO "public"."transaction" VALUES ('260', '2', '0.64', '9', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('261', '2', '1649.16', '18', '2016-09-10 08:32:11', null);
INSERT INTO "public"."transaction" VALUES ('262', '2', '1525.15', '3', '2016-11-01 00:07:41', null);
INSERT INTO "public"."transaction" VALUES ('263', '2', '36.17', '10', '2016-09-07 06:43:50', null);
INSERT INTO "public"."transaction" VALUES ('264', '2', '-420.21', '17', '2016-09-25 20:08:51', null);
INSERT INTO "public"."transaction" VALUES ('265', '2', '439.04', '3', '2016-09-26 07:21:33', null);
INSERT INTO "public"."transaction" VALUES ('266', '2', '907.09', '1', '2016-09-01 00:02:27', null);
INSERT INTO "public"."transaction" VALUES ('267', '2', '284.28', '9', '2016-10-07 04:05:15', null);
INSERT INTO "public"."transaction" VALUES ('268', '2', '8.65', '18', '2016-09-05 21:20:03', null);
INSERT INTO "public"."transaction" VALUES ('269', '2', '266.03', '20', '2016-09-01 00:19:40', null);
INSERT INTO "public"."transaction" VALUES ('270', '2', '-261.61', '6', '2016-09-24 11:28:35', null);
INSERT INTO "public"."transaction" VALUES ('271', '2', '-48.38', '10', '2016-09-30 14:00:51', null);
INSERT INTO "public"."transaction" VALUES ('272', '2', '5.94', '17', '2016-09-20 05:58:23', null);
INSERT INTO "public"."transaction" VALUES ('273', '2', '54.89', '19', '2016-11-10 09:49:46', null);
INSERT INTO "public"."transaction" VALUES ('274', '2', '353.35', '16', '2016-09-12 13:17:14', null);
INSERT INTO "public"."transaction" VALUES ('275', '2', '511.72', '16', '2016-10-29 14:27:46', null);
INSERT INTO "public"."transaction" VALUES ('276', '2', '-746.46', '17', '2016-09-01 00:00:45', null);
INSERT INTO "public"."transaction" VALUES ('277', '2', '402.40', '20', '2016-09-26 10:29:48', null);
INSERT INTO "public"."transaction" VALUES ('278', '2', '-248.25', '1', '2016-10-06 07:28:20', null);
INSERT INTO "public"."transaction" VALUES ('279', '2', '379.38', '18', '2016-10-19 10:43:41', null);
INSERT INTO "public"."transaction" VALUES ('280', '2', '263.03', '6', '2016-09-01 00:09:40', null);
INSERT INTO "public"."transaction" VALUES ('281', '2', '424.04', '9', '2016-09-01 00:03:34', null);
INSERT INTO "public"."transaction" VALUES ('282', '2', '-317.18', '3', '2016-10-13 11:02:05', null);
INSERT INTO "public"."transaction" VALUES ('283', '2', '-74.67', '19', '2016-09-12 09:42:33', null);
INSERT INTO "public"."transaction" VALUES ('284', '2', '-837.38', '10', '2016-10-13 05:19:54', null);
INSERT INTO "public"."transaction" VALUES ('285', '2', '-354.54', '17', '2016-09-07 18:44:28', null);
INSERT INTO "public"."transaction" VALUES ('286', '2', '-231.32', '1', '2016-09-01 20:58:49', null);
INSERT INTO "public"."transaction" VALUES ('287', '2', '60.62', '20', '2016-10-14 08:55:23', null);
INSERT INTO "public"."transaction" VALUES ('288', '2', '323.03', '3', '2016-10-20 23:39:20', null);
INSERT INTO "public"."transaction" VALUES ('289', '2', '-677.00', '18', '2016-09-05 09:21:32', null);
INSERT INTO "public"."transaction" VALUES ('290', '2', '-346.35', '6', '2016-09-14 10:39:59', null);
INSERT INTO "public"."transaction" VALUES ('291', '2', '39.45', '19', '2016-10-13 09:51:02', null);
INSERT INTO "public"."transaction" VALUES ('292', '2', '1414.14', '16', '2016-09-10 21:36:47', null);
INSERT INTO "public"."transaction" VALUES ('293', '2', '-1173.73', '9', '2016-09-01 22:05:12', null);
INSERT INTO "public"."transaction" VALUES ('294', '2', '1212.21', '10', '2016-09-25 02:32:52', null);
INSERT INTO "public"."transaction" VALUES ('295', '2', '-0.09', '17', '2016-09-20 14:12:07', null);
INSERT INTO "public"."transaction" VALUES ('296', '2', '600.60', '16', '2016-09-19 22:20:50', null);
INSERT INTO "public"."transaction" VALUES ('297', '2', '-866.87', '18', '2016-09-01 00:46:34', null);
INSERT INTO "public"."transaction" VALUES ('298', '2', '-8.92', '20', '2016-09-26 06:10:50', null);
INSERT INTO "public"."transaction" VALUES ('299', '2', '-0.99', '3', '2016-09-01 00:04:49', null);
INSERT INTO "public"."transaction" VALUES ('300', '2', '-406.06', '10', '2016-09-12 09:51:29', null);
INSERT INTO "public"."transaction" VALUES ('301', '2', '10.31', '6', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('302', '2', '-1492.93', '9', '2016-10-06 21:53:48', null);
INSERT INTO "public"."transaction" VALUES ('303', '2', '3.31', '1', '2016-10-20 09:53:33', null);
INSERT INTO "public"."transaction" VALUES ('304', '2', '331.03', '19', '2016-10-18 00:47:45', null);
INSERT INTO "public"."transaction" VALUES ('305', '2', '-5.18', '19', '2016-11-12 09:04:07', null);
INSERT INTO "public"."transaction" VALUES ('306', '2', '-1259.59', '20', '2016-11-01 09:08:18', null);
INSERT INTO "public"."transaction" VALUES ('307', '2', '-640.64', '18', '2016-10-14 15:00:54', null);
INSERT INTO "public"."transaction" VALUES ('308', '2', '783.78', '3', '2016-09-01 19:57:16', null);
INSERT INTO "public"."transaction" VALUES ('309', '2', '-0.25', '16', '2016-09-01 09:46:52', null);
INSERT INTO "public"."transaction" VALUES ('310', '2', '-1332.33', '1', '2016-10-04 20:08:31', null);
INSERT INTO "public"."transaction" VALUES ('311', '2', '-254.00', '9', '2016-09-22 15:21:27', null);
INSERT INTO "public"."transaction" VALUES ('312', '2', '-0.92', '17', '2016-09-01 00:00:01', null);
INSERT INTO "public"."transaction" VALUES ('313', '2', '-1497.50', '10', '2016-09-26 11:36:31', null);
INSERT INTO "public"."transaction" VALUES ('314', '2', '214.02', '6', '2016-10-05 09:38:31', null);
INSERT INTO "public"."transaction" VALUES ('315', '2', '512.51', '3', '2016-10-20 03:03:16', null);
INSERT INTO "public"."transaction" VALUES ('316', '2', '1872.19', '17', '2016-10-09 15:17:34', null);
INSERT INTO "public"."transaction" VALUES ('317', '2', '0.00', '10', '2016-09-01 00:01:22', null);
INSERT INTO "public"."transaction" VALUES ('318', '2', '0.10', '6', '2016-10-06 21:15:58', null);
INSERT INTO "public"."transaction" VALUES ('319', '2', '-0.01', '1', '2016-09-22 16:16:36', null);
INSERT INTO "public"."transaction" VALUES ('320', '2', '787.23', '19', '2016-11-05 07:06:43', null);
INSERT INTO "public"."transaction" VALUES ('321', '2', '190.50', '18', '2016-10-17 11:34:11', null);
INSERT INTO "public"."transaction" VALUES ('322', '2', '1950.20', '9', '2016-09-09 09:41:35', null);
INSERT INTO "public"."transaction" VALUES ('323', '2', '253.96', '16', '2016-09-14 07:50:46', null);
INSERT INTO "public"."transaction" VALUES ('324', '2', '0.00', '20', '2016-09-11 12:17:46', null);
INSERT INTO "public"."transaction" VALUES ('325', '2', '-446.47', '20', '2016-09-18 18:25:39', null);
INSERT INTO "public"."transaction" VALUES ('326', '2', '431.04', '9', '2016-09-15 22:09:09', null);
INSERT INTO "public"."transaction" VALUES ('327', '2', '-1128.13', '6', '2016-11-06 23:56:06', null);
INSERT INTO "public"."transaction" VALUES ('328', '2', '827.83', '19', '2016-09-28 00:44:08', null);
INSERT INTO "public"."transaction" VALUES ('329', '2', '1595.16', '18', '2016-09-27 06:55:48', null);
INSERT INTO "public"."transaction" VALUES ('330', '2', '-229.29', '3', '2016-09-01 05:32:19', null);
INSERT INTO "public"."transaction" VALUES ('331', '2', '-0.20', '17', '2016-09-19 12:25:41', null);
INSERT INTO "public"."transaction" VALUES ('332', '2', '-286.00', '1', '2016-09-10 10:10:57', null);
INSERT INTO "public"."transaction" VALUES ('333', '2', '227.02', '16', '2016-09-11 10:49:01', null);
INSERT INTO "public"."transaction" VALUES ('334', '2', '-219.19', '10', '2016-09-01 00:00:09', null);
INSERT INTO "public"."transaction" VALUES ('335', '2', '-284.84', '3', '2016-09-07 19:27:44', null);
INSERT INTO "public"."transaction" VALUES ('336', '2', '-947.95', '9', '2016-09-01 00:58:48', null);
INSERT INTO "public"."transaction" VALUES ('337', '2', '-1274.74', '20', '2016-09-01 00:10:05', null);
INSERT INTO "public"."transaction" VALUES ('338', '2', '347.03', '17', '2016-09-01 09:49:47', null);
INSERT INTO "public"."transaction" VALUES ('339', '2', '1177.18', '16', '2016-09-10 05:37:11', null);
INSERT INTO "public"."transaction" VALUES ('340', '2', '-314.14', '1', '2016-09-30 13:24:14', null);
INSERT INTO "public"."transaction" VALUES ('341', '2', '-550.50', '10', '2016-10-06 22:52:27', null);
INSERT INTO "public"."transaction" VALUES ('342', '2', '-912.12', '6', '2016-10-04 16:31:52', null);
INSERT INTO "public"."transaction" VALUES ('343', '2', '419.42', '18', '2016-10-29 22:24:01', null);
INSERT INTO "public"."transaction" VALUES ('344', '2', '4.67', '19', '2016-09-25 01:08:19', null);
INSERT INTO "public"."transaction" VALUES ('345', '2', '664.07', '16', '2016-09-14 15:53:33', null);
INSERT INTO "public"."transaction" VALUES ('346', '2', '502.00', '10', '2016-10-03 17:00:42', null);
INSERT INTO "public"."transaction" VALUES ('347', '2', '1661.17', '20', '2016-11-16 20:30:43', null);
INSERT INTO "public"."transaction" VALUES ('348', '2', '8.69', '18', '2016-10-03 03:00:27', null);
INSERT INTO "public"."transaction" VALUES ('349', '2', '-303.03', '6', '2016-09-15 05:00:31', null);
INSERT INTO "public"."transaction" VALUES ('350', '2', '-1.04', '3', '2016-10-16 05:40:28', null);
INSERT INTO "public"."transaction" VALUES ('351', '2', '-92.70', '9', '2016-09-01 00:00:08', null);
INSERT INTO "public"."transaction" VALUES ('352', '2', '-344.45', '1', '2016-09-10 21:30:19', null);
INSERT INTO "public"."transaction" VALUES ('353', '2', '0.48', '19', '2016-10-31 20:50:18', null);
INSERT INTO "public"."transaction" VALUES ('354', '2', '-517.17', '17', '2016-09-09 02:19:36', null);
INSERT INTO "public"."transaction" VALUES ('355', '2', '-425.25', '6', '2016-10-13 12:37:06', null);
INSERT INTO "public"."transaction" VALUES ('356', '2', '-958.59', '16', '2016-09-01 01:31:16', null);
INSERT INTO "public"."transaction" VALUES ('357', '2', '779.08', '9', '2016-10-10 12:05:08', null);
INSERT INTO "public"."transaction" VALUES ('358', '2', '-445.45', '18', '2016-09-01 00:26:26', null);
INSERT INTO "public"."transaction" VALUES ('359', '2', '287.29', '20', '2016-11-02 19:53:21', null);
INSERT INTO "public"."transaction" VALUES ('360', '2', '990.10', '10', '2016-11-04 18:18:41', null);
INSERT INTO "public"."transaction" VALUES ('361', '2', '601.06', '17', '2016-09-12 11:04:12', null);
INSERT INTO "public"."transaction" VALUES ('362', '2', '345.35', '19', '2016-09-01 11:14:53', null);
INSERT INTO "public"."transaction" VALUES ('363', '2', '839.08', '1', '2016-09-01 02:45:50', null);
INSERT INTO "public"."transaction" VALUES ('364', '2', '-377.78', '3', '2016-09-01 00:06:40', null);
INSERT INTO "public"."transaction" VALUES ('365', '2', '882.88', '16', '2016-09-20 10:49:59', null);
INSERT INTO "public"."transaction" VALUES ('366', '2', '451.05', '9', '2016-11-06 17:30:28', null);
INSERT INTO "public"."transaction" VALUES ('367', '2', '422.04', '18', '2016-10-12 07:35:18', null);
INSERT INTO "public"."transaction" VALUES ('368', '2', '1768.46', '20', '2016-09-23 11:17:45', null);
INSERT INTO "public"."transaction" VALUES ('369', '2', '-1251.51', '19', '2016-09-19 21:05:20', null);
INSERT INTO "public"."transaction" VALUES ('370', '2', '-50.88', '17', '2016-09-09 00:31:04', null);
INSERT INTO "public"."transaction" VALUES ('371', '2', '-1552.55', '6', '2016-09-02 02:06:36', null);
INSERT INTO "public"."transaction" VALUES ('372', '2', '724.72', '10', '2016-09-19 03:48:30', null);
INSERT INTO "public"."transaction" VALUES ('373', '2', '-413.13', '3', '2016-09-21 05:54:21', null);
INSERT INTO "public"."transaction" VALUES ('374', '2', '573.06', '1', '2016-10-01 03:44:14', null);
INSERT INTO "public"."transaction" VALUES ('375', '2', '318.32', '6', '2016-09-01 00:01:35', null);
INSERT INTO "public"."transaction" VALUES ('376', '2', '296.30', '1', '2016-09-01 00:11:50', null);
INSERT INTO "public"."transaction" VALUES ('377', '2', '-464.65', '16', '2016-10-02 10:00:27', null);
INSERT INTO "public"."transaction" VALUES ('378', '2', '1.69', '19', '2016-09-26 02:12:19', null);
INSERT INTO "public"."transaction" VALUES ('379', '2', '0.08', '20', '2016-09-09 00:10:01', null);
INSERT INTO "public"."transaction" VALUES ('380', '2', '8.88', '10', '2016-09-22 00:38:36', null);
INSERT INTO "public"."transaction" VALUES ('381', '2', '-203.03', '17', '2016-10-16 01:55:28', null);
INSERT INTO "public"."transaction" VALUES ('382', '2', '350.35', '18', '2016-09-17 10:08:37', null);
INSERT INTO "public"."transaction" VALUES ('383', '2', '894.12', '9', '2016-10-15 10:43:03', null);
INSERT INTO "public"."transaction" VALUES ('384', '2', '-237.38', '3', '2016-09-01 02:17:57', null);
INSERT INTO "public"."transaction" VALUES ('385', '2', '-240.41', '6', '2016-09-01 09:50:53', null);
INSERT INTO "public"."transaction" VALUES ('386', '2', '10.60', '3', '2016-09-15 03:23:53', null);
INSERT INTO "public"."transaction" VALUES ('387', '2', '1417.14', '1', '2016-10-13 05:08:21', null);
INSERT INTO "public"."transaction" VALUES ('388', '2', '487.57', '20', '2016-09-01 00:00:24', null);
INSERT INTO "public"."transaction" VALUES ('389', '2', '379.04', '17', '2016-10-05 02:37:32', null);
INSERT INTO "public"."transaction" VALUES ('390', '2', '-449.45', '10', '2016-10-14 23:04:37', null);
INSERT INTO "public"."transaction" VALUES ('391', '2', '74.02', '16', '2016-09-01 10:40:52', null);
INSERT INTO "public"."transaction" VALUES ('392', '2', '-8.08', '19', '2016-09-01 00:36:20', null);
INSERT INTO "public"."transaction" VALUES ('393', '2', '-331.33', '9', '2016-10-10 22:45:54', null);
INSERT INTO "public"."transaction" VALUES ('394', '2', '429.04', '18', '2016-10-09 17:40:58', null);
INSERT INTO "public"."transaction" VALUES ('395', '2', '296.03', '3', '2016-10-20 16:17:49', null);
INSERT INTO "public"."transaction" VALUES ('396', '2', '-5.58', '16', '2016-10-02 23:23:38', null);
INSERT INTO "public"."transaction" VALUES ('397', '2', '511.05', '17', '2016-09-01 01:57:39', null);
INSERT INTO "public"."transaction" VALUES ('398', '2', '558.00', '18', '2016-09-08 01:57:24', null);
INSERT INTO "public"."transaction" VALUES ('399', '2', '369.04', '9', '2016-09-14 22:50:44', null);
INSERT INTO "public"."transaction" VALUES ('400', '2', '-911.91', '19', '2016-09-07 02:11:30', null);
INSERT INTO "public"."transaction" VALUES ('401', '2', '-1515.52', '10', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('402', '2', '264.03', '1', '2016-09-10 11:41:07', null);
INSERT INTO "public"."transaction" VALUES ('403', '2', '945.00', '6', '2016-10-06 02:09:48', null);
INSERT INTO "public"."transaction" VALUES ('404', '2', '-657.57', '20', '2016-10-01 13:53:07', null);
INSERT INTO "public"."transaction" VALUES ('405', '2', '-1.92', '18', '2016-09-19 19:32:09', null);
INSERT INTO "public"."transaction" VALUES ('406', '2', '-0.01', '1', '2016-09-14 11:00:22', null);
INSERT INTO "public"."transaction" VALUES ('407', '2', '375.38', '9', '2016-09-19 23:28:12', null);
INSERT INTO "public"."transaction" VALUES ('408', '2', '-446.46', '19', '2016-09-01 00:01:08', null);
INSERT INTO "public"."transaction" VALUES ('409', '2', '-55.48', '17', '2016-10-19 22:47:58', null);
INSERT INTO "public"."transaction" VALUES ('410', '2', '-1901.90', '3', '2016-10-30 05:38:08', null);
INSERT INTO "public"."transaction" VALUES ('411', '2', '762.76', '10', '2016-09-23 00:13:25', null);
INSERT INTO "public"."transaction" VALUES ('412', '2', '-333.33', '20', '2016-11-07 05:51:19', null);
INSERT INTO "public"."transaction" VALUES ('413', '2', '-597.98', '16', '2016-10-27 21:19:38', null);
INSERT INTO "public"."transaction" VALUES ('414', '2', '-315.32', '6', '2016-10-01 02:12:15', null);
INSERT INTO "public"."transaction" VALUES ('415', '2', '402.04', '17', '2016-11-07 19:31:25', null);
INSERT INTO "public"."transaction" VALUES ('416', '2', '-330.33', '9', '2016-09-17 10:11:58', null);
INSERT INTO "public"."transaction" VALUES ('417', '2', '-411.11', '16', '2016-09-17 21:47:00', null);
INSERT INTO "public"."transaction" VALUES ('418', '2', '-384.84', '20', '2016-09-01 00:14:39', null);
INSERT INTO "public"."transaction" VALUES ('419', '2', '0.11', '10', '2016-10-29 00:10:37', null);
INSERT INTO "public"."transaction" VALUES ('420', '2', '8.54', '19', '2016-10-01 20:02:38', null);
INSERT INTO "public"."transaction" VALUES ('421', '2', '-268.69', '1', '2016-09-08 05:57:44', null);
INSERT INTO "public"."transaction" VALUES ('422', '2', '-16.74', '3', '2016-09-16 07:54:11', null);
INSERT INTO "public"."transaction" VALUES ('423', '2', '532.53', '18', '2016-09-14 01:38:20', null);
INSERT INTO "public"."transaction" VALUES ('424', '2', '23.82', '6', '2016-09-30 04:31:06', null);
INSERT INTO "public"."transaction" VALUES ('425', '2', '746.07', '1', '2016-09-19 22:34:14', null);
INSERT INTO "public"."transaction" VALUES ('426', '2', '-1329.30', '9', '2016-10-06 04:48:57', null);
INSERT INTO "public"."transaction" VALUES ('427', '2', '515.52', '3', '2016-09-12 07:55:58', null);
INSERT INTO "public"."transaction" VALUES ('428', '2', '700.00', '16', '2016-10-26 16:01:48', null);
INSERT INTO "public"."transaction" VALUES ('429', '2', '16.87', '19', '2016-10-15 05:56:12', null);
INSERT INTO "public"."transaction" VALUES ('430', '2', '0.74', '17', '2016-09-24 09:57:23', null);
INSERT INTO "public"."transaction" VALUES ('431', '2', '528.05', '10', '2016-09-01 23:44:36', null);
INSERT INTO "public"."transaction" VALUES ('432', '2', '516.05', '18', '2016-09-16 10:23:50', null);
INSERT INTO "public"."transaction" VALUES ('433', '2', '0.06', '20', '2016-10-26 16:33:34', null);
INSERT INTO "public"."transaction" VALUES ('434', '2', '-315.15', '6', '2016-09-01 00:40:30', null);
INSERT INTO "public"."transaction" VALUES ('435', '2', '-348.48', '17', '2016-09-15 17:29:06', null);
INSERT INTO "public"."transaction" VALUES ('436', '2', '-636.64', '19', '2016-09-01 00:06:11', null);
INSERT INTO "public"."transaction" VALUES ('437', '2', '392.39', '16', '2016-09-11 11:41:13', null);
INSERT INTO "public"."transaction" VALUES ('438', '2', '210.00', '10', '2016-09-17 07:07:51', null);
INSERT INTO "public"."transaction" VALUES ('439', '2', '-0.55', '1', '2016-10-31 11:20:56', null);
INSERT INTO "public"."transaction" VALUES ('440', '2', '-349.49', '6', '2016-09-01 01:33:01', null);
INSERT INTO "public"."transaction" VALUES ('441', '2', '-397.98', '3', '2016-09-10 23:52:30', null);
INSERT INTO "public"."transaction" VALUES ('442', '2', '0.02', '20', '2016-09-01 00:00:46', null);
INSERT INTO "public"."transaction" VALUES ('443', '2', '957.96', '9', '2016-09-18 17:30:32', null);
INSERT INTO "public"."transaction" VALUES ('444', '2', '645.06', '18', '2016-09-19 01:10:29', null);
INSERT INTO "public"."transaction" VALUES ('445', '2', '-1.69', '10', '2016-09-01 00:08:19', null);
INSERT INTO "public"."transaction" VALUES ('446', '2', '-1336.37', '3', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('447', '2', '-0.05', '6', '2016-09-01 03:38:14', null);
INSERT INTO "public"."transaction" VALUES ('448', '2', '-475.76', '20', '2016-10-19 21:17:12', null);
INSERT INTO "public"."transaction" VALUES ('449', '2', '423.04', '1', '2016-10-14 05:08:48', null);
INSERT INTO "public"."transaction" VALUES ('450', '2', '-869.69', '17', '2016-11-02 07:37:16', null);
INSERT INTO "public"."transaction" VALUES ('451', '2', '890.79', '18', '2016-09-02 02:03:07', null);
INSERT INTO "public"."transaction" VALUES ('452', '2', '1178.12', '9', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('453', '2', '6.83', '16', '2016-09-25 23:59:53', null);
INSERT INTO "public"."transaction" VALUES ('454', '2', '-297.98', '19', '2016-09-09 00:59:10', null);
INSERT INTO "public"."transaction" VALUES ('455', '2', '-577.58', '10', '2016-11-06 20:21:03', null);
INSERT INTO "public"."transaction" VALUES ('456', '2', '-254.54', '19', '2016-09-30 08:03:29', null);
INSERT INTO "public"."transaction" VALUES ('457', '2', '-1227.28', '6', '2016-10-23 02:48:31', null);
INSERT INTO "public"."transaction" VALUES ('458', '2', '-0.07', '17', '2016-09-20 01:34:33', null);
INSERT INTO "public"."transaction" VALUES ('459', '2', '1647.16', '18', '2016-11-03 17:53:23', null);
INSERT INTO "public"."transaction" VALUES ('460', '2', '-551.55', '20', '2016-11-01 07:48:07', null);
INSERT INTO "public"."transaction" VALUES ('461', '2', '1337.34', '3', '2016-09-17 11:46:28', null);
INSERT INTO "public"."transaction" VALUES ('462', '2', '202.02', '16', '2016-09-15 02:45:34', null);
INSERT INTO "public"."transaction" VALUES ('463', '2', '500.05', '1', '2016-09-01 01:39:32', null);
INSERT INTO "public"."transaction" VALUES ('464', '2', '1009.10', '9', '2016-10-15 11:32:30', null);
INSERT INTO "public"."transaction" VALUES ('465', '2', '353.04', '20', '2016-10-27 05:33:14', null);
INSERT INTO "public"."transaction" VALUES ('466', '2', '-348.35', '9', '2016-09-01 00:00:41', null);
INSERT INTO "public"."transaction" VALUES ('467', '2', '-803.00', '19', '2016-09-01 00:01:42', null);
INSERT INTO "public"."transaction" VALUES ('468', '2', '-1812.13', '18', '2016-09-01 16:38:22', null);
INSERT INTO "public"."transaction" VALUES ('469', '2', '-362.62', '10', '2016-09-11 21:11:45', null);
INSERT INTO "public"."transaction" VALUES ('470', '2', '204.02', '16', '2016-11-11 03:37:48', null);
INSERT INTO "public"."transaction" VALUES ('471', '2', '5.09', '1', '2016-09-21 23:47:47', null);
INSERT INTO "public"."transaction" VALUES ('472', '2', '-255.56', '17', '2016-09-01 00:01:24', null);
INSERT INTO "public"."transaction" VALUES ('473', '2', '-260.60', '3', '2016-09-09 12:05:08', null);
INSERT INTO "public"."transaction" VALUES ('474', '2', '-1.17', '6', '2016-11-04 23:12:50', null);
INSERT INTO "public"."transaction" VALUES ('475', '2', '-10.59', '19', '2016-10-18 11:24:50', null);
INSERT INTO "public"."transaction" VALUES ('476', '2', '1982.20', '20', '2016-09-12 09:26:08', null);
INSERT INTO "public"."transaction" VALUES ('477', '2', '-678.62', '6', '2016-09-01 00:10:20', null);
INSERT INTO "public"."transaction" VALUES ('478', '2', '-211.21', '1', '2016-10-16 04:03:44', null);
INSERT INTO "public"."transaction" VALUES ('479', '2', '400.40', '3', '2016-09-19 18:29:56', null);
INSERT INTO "public"."transaction" VALUES ('480', '2', '-1951.51', '18', '2016-09-01 00:39:24', null);
INSERT INTO "public"."transaction" VALUES ('481', '2', '-1621.22', '10', '2016-09-09 02:31:55', null);
INSERT INTO "public"."transaction" VALUES ('482', '2', '1678.17', '16', '2016-11-04 13:16:17', null);
INSERT INTO "public"."transaction" VALUES ('483', '2', '1158.12', '17', '2016-10-20 13:37:28', null);
INSERT INTO "public"."transaction" VALUES ('484', '2', '337.03', '9', '2016-09-01 00:10:38', null);
INSERT INTO "public"."transaction" VALUES ('485', '2', '0.00', '3', '2016-10-09 09:11:32', null);
INSERT INTO "public"."transaction" VALUES ('486', '2', '-348.48', '6', '2016-09-13 13:52:19', null);
INSERT INTO "public"."transaction" VALUES ('487', '2', '-342.43', '9', '2016-09-01 01:09:41', null);
INSERT INTO "public"."transaction" VALUES ('488', '2', '436.44', '17', '2016-09-09 23:40:51', null);
INSERT INTO "public"."transaction" VALUES ('489', '2', '333.33', '19', '2016-10-18 12:28:30', null);
INSERT INTO "public"."transaction" VALUES ('490', '2', '410.04', '1', '2016-11-08 23:19:06', null);
INSERT INTO "public"."transaction" VALUES ('491', '2', '360.04', '18', '2016-09-11 20:56:57', null);
INSERT INTO "public"."transaction" VALUES ('492', '2', '201.02', '20', '2016-10-17 04:58:33', null);
INSERT INTO "public"."transaction" VALUES ('493', '2', '399.04', '10', '2016-09-09 04:13:08', null);
INSERT INTO "public"."transaction" VALUES ('494', '2', '-1221.22', '16', '2016-10-05 19:13:37', null);
INSERT INTO "public"."transaction" VALUES ('495', '2', '1527.53', '1', '2016-09-01 00:00:09', null);
INSERT INTO "public"."transaction" VALUES ('496', '2', '-491.91', '18', '2016-09-01 00:01:31', null);
INSERT INTO "public"."transaction" VALUES ('497', '2', '-517.17', '19', '2016-09-16 19:16:15', null);
INSERT INTO "public"."transaction" VALUES ('498', '2', '1006.10', '9', '2016-09-09 14:48:09', null);
INSERT INTO "public"."transaction" VALUES ('499', '2', '554.55', '10', '2016-09-03 05:38:55', null);
INSERT INTO "public"."transaction" VALUES ('500', '2', '349.03', '3', '2016-10-13 13:51:39', null);
INSERT INTO "public"."transaction" VALUES ('501', '2', '-20.50', '20', '2016-10-17 05:39:20', null);
INSERT INTO "public"."transaction" VALUES ('502', '2', '-323.32', '6', '2016-09-01 00:01:16', null);
INSERT INTO "public"."transaction" VALUES ('503', '2', '-283.83', '16', '2016-10-21 00:02:36', null);
INSERT INTO "public"."transaction" VALUES ('504', '2', '5.19', '17', '2016-10-03 06:23:03', null);
INSERT INTO "public"."transaction" VALUES ('505', '2', '681.68', '10', '2016-09-09 13:10:33', null);
INSERT INTO "public"."transaction" VALUES ('506', '2', '-245.45', '20', '2016-09-01 13:29:06', null);
INSERT INTO "public"."transaction" VALUES ('507', '2', '-35.02', '16', '2016-09-09 17:30:55', null);
INSERT INTO "public"."transaction" VALUES ('508', '2', '1305.31', '17', '2016-09-01 00:00:37', null);
INSERT INTO "public"."transaction" VALUES ('509', '2', '-1660.66', '18', '2016-10-19 05:26:10', null);
INSERT INTO "public"."transaction" VALUES ('510', '2', '-65.59', '6', '2016-10-15 17:51:16', null);
INSERT INTO "public"."transaction" VALUES ('511', '2', '816.00', '3', '2016-09-15 01:57:57', null);
INSERT INTO "public"."transaction" VALUES ('512', '2', '243.02', '19', '2016-09-26 12:05:18', null);
INSERT INTO "public"."transaction" VALUES ('513', '2', '-6.66', '1', '2016-09-01 00:12:01', null);
INSERT INTO "public"."transaction" VALUES ('514', '2', '1628.63', '9', '2016-10-05 22:24:07', null);
INSERT INTO "public"."transaction" VALUES ('515', '2', '-287.29', '3', '2016-10-04 07:14:05', null);
INSERT INTO "public"."transaction" VALUES ('516', '2', '607.61', '6', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('517', '2', '-383.38', '18', '2016-10-15 09:20:50', null);
INSERT INTO "public"."transaction" VALUES ('518', '2', '333.00', '9', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('519', '2', '381.00', '20', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('520', '2', '-411.12', '1', '2016-09-17 22:13:19', null);
INSERT INTO "public"."transaction" VALUES ('521', '2', '-825.73', '16', '2016-10-12 23:05:06', null);
INSERT INTO "public"."transaction" VALUES ('522', '2', '1823.18', '17', '2016-09-01 01:19:21', null);
INSERT INTO "public"."transaction" VALUES ('523', '2', '332.03', '10', '2016-09-01 22:14:19', null);
INSERT INTO "public"."transaction" VALUES ('524', '2', '418.04', '19', '2016-09-01 00:01:30', null);
INSERT INTO "public"."transaction" VALUES ('525', '2', '210.02', '9', '2016-09-12 07:07:45', null);
INSERT INTO "public"."transaction" VALUES ('526', '2', '503.50', '3', '2016-09-22 17:29:14', null);
INSERT INTO "public"."transaction" VALUES ('527', '2', '278.28', '6', '2016-09-30 02:44:06', null);
INSERT INTO "public"."transaction" VALUES ('528', '2', '-57.64', '16', '2016-09-01 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('529', '2', '1168.17', '10', '2016-09-27 17:33:08', null);
INSERT INTO "public"."transaction" VALUES ('530', '2', '-822.30', '17', '2016-09-01 00:01:25', null);
INSERT INTO "public"."transaction" VALUES ('531', '2', '221.02', '18', '2016-10-13 01:21:56', null);
INSERT INTO "public"."transaction" VALUES ('532', '2', '-4.50', '19', '2016-10-06 01:28:40', null);
INSERT INTO "public"."transaction" VALUES ('533', '2', '1618.58', '20', '2016-09-01 00:45:41', null);
INSERT INTO "public"."transaction" VALUES ('534', '2', '0.08', '1', '2016-10-04 15:54:38', null);
INSERT INTO "public"."transaction" VALUES ('535', '2', '55.99', '16', '2016-09-28 20:00:01', null);
INSERT INTO "public"."transaction" VALUES ('536', '2', '19.08', '19', '2016-09-14 08:24:35', null);
INSERT INTO "public"."transaction" VALUES ('537', '2', '235.24', '20', '2016-09-02 02:36:05', null);
INSERT INTO "public"."transaction" VALUES ('538', '2', '1.89', '6', '2016-09-01 06:28:06', null);
INSERT INTO "public"."transaction" VALUES ('539', '2', '78.91', '1', '2016-10-24 09:42:37', null);
INSERT INTO "public"."transaction" VALUES ('540', '2', '-264.47', '18', '2016-11-06 06:55:46', null);
INSERT INTO "public"."transaction" VALUES ('541', '2', '323.03', '3', '2016-09-24 08:53:02', null);
INSERT INTO "public"."transaction" VALUES ('542', '2', '-1438.38', '9', '2016-10-29 20:29:18', null);
INSERT INTO "public"."transaction" VALUES ('543', '2', '-448.48', '10', '2016-09-01 00:01:15', null);
INSERT INTO "public"."transaction" VALUES ('544', '2', '-732.73', '17', '2016-10-03 11:29:46', null);
INSERT INTO "public"."transaction" VALUES ('545', '2', '-0.09', '6', '2016-10-20 09:10:02', null);
INSERT INTO "public"."transaction" VALUES ('546', '2', '-825.83', '1', '2016-10-28 14:47:37', null);
INSERT INTO "public"."transaction" VALUES ('547', '2', '8.23', '17', '2016-09-09 17:38:01', null);
INSERT INTO "public"."transaction" VALUES ('548', '2', '0.00', '20', '2016-09-11 14:33:28', null);
INSERT INTO "public"."transaction" VALUES ('549', '2', '336.03', '16', '2016-09-02 02:34:19', null);
INSERT INTO "public"."transaction" VALUES ('550', '2', '-1102.02', '10', '2016-10-10 07:35:41', null);
INSERT INTO "public"."transaction" VALUES ('551', '2', '-278.63', '3', '2016-10-27 02:09:11', null);
INSERT INTO "public"."transaction" VALUES ('552', '2', '0.65', '19', '2016-09-17 17:41:22', null);
INSERT INTO "public"."transaction" VALUES ('553', '2', '968.00', '9', '2016-10-05 16:33:25', null);
INSERT INTO "public"."transaction" VALUES ('554', '2', '723.72', '18', '2016-09-15 07:34:59', null);
INSERT INTO "public"."transaction" VALUES ('555', '2', '299.03', '10', '2016-09-25 18:09:21', null);
INSERT INTO "public"."transaction" VALUES ('556', '2', '-348.48', '6', '2016-09-01 02:04:03', null);
INSERT INTO "public"."transaction" VALUES ('557', '2', '-308.71', '17', '2016-09-01 01:29:31', null);
INSERT INTO "public"."transaction" VALUES ('558', '2', '-319.20', '19', '2016-09-01 01:04:31', null);
INSERT INTO "public"."transaction" VALUES ('559', '2', '235.24', '3', '2016-09-01 01:07:54', null);
INSERT INTO "public"."transaction" VALUES ('560', '2', '-375.76', '20', '2016-11-05 17:13:08', null);
INSERT INTO "public"."transaction" VALUES ('561', '2', '-401.40', '16', '2016-09-17 10:04:22', null);
INSERT INTO "public"."transaction" VALUES ('562', '2', '-415.16', '1', '2016-09-11 13:17:56', null);
INSERT INTO "public"."transaction" VALUES ('563', '2', '0.00', '9', '2016-09-06 23:15:09', null);
INSERT INTO "public"."transaction" VALUES ('564', '2', '346.03', '18', '2016-09-01 21:18:22', null);
INSERT INTO "public"."transaction" VALUES ('565', '2', '766.08', '3', '2016-09-17 19:13:54', null);
INSERT INTO "public"."transaction" VALUES ('566', '2', '-0.01', '9', '2016-10-14 01:23:30', null);
INSERT INTO "public"."transaction" VALUES ('567', '2', '-594.75', '18', '2016-09-25 13:41:41', null);
INSERT INTO "public"."transaction" VALUES ('568', '2', '484.05', '16', '2016-09-10 05:03:30', null);
INSERT INTO "public"."transaction" VALUES ('569', '2', '1063.06', '17', '2016-10-27 20:58:04', null);
INSERT INTO "public"."transaction" VALUES ('570', '2', '-439.44', '6', '2016-09-03 14:06:19', null);
INSERT INTO "public"."transaction" VALUES ('571', '2', '256.26', '20', '2016-09-09 18:41:44', null);
INSERT INTO "public"."transaction" VALUES ('572', '2', '63.30', '1', '2016-09-01 00:27:52', null);
INSERT INTO "public"."transaction" VALUES ('573', '2', '-472.70', '19', '2016-09-28 23:27:42', null);
INSERT INTO "public"."transaction" VALUES ('574', '2', '0.24', '10', '2016-10-04 14:31:18', null);
INSERT INTO "public"."transaction" VALUES ('575', '2', '-1595.95', '6', '2016-10-10 01:42:08', null);
INSERT INTO "public"."transaction" VALUES ('576', '2', '-0.90', '3', '2016-09-01 01:40:27', null);
INSERT INTO "public"."transaction" VALUES ('577', '2', '1687.17', '1', '2016-11-06 18:02:55', null);
INSERT INTO "public"."transaction" VALUES ('578', '2', '205.02', '20', '2016-09-01 00:01:21', null);
INSERT INTO "public"."transaction" VALUES ('579', '2', '347.03', '10', '2016-10-17 21:50:48', null);
INSERT INTO "public"."transaction" VALUES ('580', '2', '-73.47', '17', '2016-10-08 10:25:27', null);
INSERT INTO "public"."transaction" VALUES ('581', '2', '231.02', '18', '2016-09-01 20:23:27', null);
INSERT INTO "public"."transaction" VALUES ('582', '2', '-54.64', '19', '2016-11-06 23:49:07', null);
INSERT INTO "public"."transaction" VALUES ('583', '2', '-15.42', '16', '2016-11-04 07:42:14', null);
INSERT INTO "public"."transaction" VALUES ('584', '2', '643.28', '9', '2016-09-10 07:47:03', null);
INSERT INTO "public"."transaction" VALUES ('585', '2', '-743.74', '20', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('586', '2', '-349.50', '1', '2016-10-01 00:31:46', null);
INSERT INTO "public"."transaction" VALUES ('587', '2', '-259.26', '18', '2016-10-01 12:30:08', null);
INSERT INTO "public"."transaction" VALUES ('588', '2', '263.03', '10', '2016-10-17 16:44:58', null);
INSERT INTO "public"."transaction" VALUES ('589', '2', '-403.40', '16', '2016-11-15 14:42:19', null);
INSERT INTO "public"."transaction" VALUES ('590', '2', '-428.28', '17', '2016-09-01 05:12:13', null);
INSERT INTO "public"."transaction" VALUES ('591', '2', '589.06', '3', '2016-09-11 11:11:04', null);
INSERT INTO "public"."transaction" VALUES ('592', '2', '-377.77', '6', '2016-10-12 07:41:26', null);
INSERT INTO "public"."transaction" VALUES ('593', '2', '-1700.00', '19', '2016-10-05 18:11:42', null);
INSERT INTO "public"."transaction" VALUES ('594', '2', '-0.70', '9', '2016-10-02 14:45:24', null);
INSERT INTO "public"."transaction" VALUES ('595', '2', '-6.20', '6', '2016-09-01 06:49:22', null);
INSERT INTO "public"."transaction" VALUES ('596', '2', '-243.44', '20', '2016-09-09 10:09:37', null);
INSERT INTO "public"."transaction" VALUES ('597', '2', '-1.20', '9', '2016-11-15 14:58:17', null);
INSERT INTO "public"."transaction" VALUES ('598', '2', '-767.67', '10', '2016-09-10 13:29:37', null);
INSERT INTO "public"."transaction" VALUES ('599', '2', '-762.63', '19', '2016-09-25 11:56:58', null);
INSERT INTO "public"."transaction" VALUES ('600', '2', '-1771.71', '18', '2016-09-01 00:06:20', null);
INSERT INTO "public"."transaction" VALUES ('601', '2', '347.35', '1', '2016-09-21 02:03:29', null);
INSERT INTO "public"."transaction" VALUES ('602', '2', '-9.94', '17', '2016-10-18 05:03:42', null);
INSERT INTO "public"."transaction" VALUES ('603', '2', '359.04', '16', '2016-09-01 23:16:56', null);
INSERT INTO "public"."transaction" VALUES ('604', '2', '9.66', '3', '2016-10-15 01:50:36', null);
INSERT INTO "public"."transaction" VALUES ('605', '2', '334.03', '10', '2016-09-01 22:51:40', null);
INSERT INTO "public"."transaction" VALUES ('606', '2', '974.10', '17', '2016-09-23 10:12:41', null);
INSERT INTO "public"."transaction" VALUES ('607', '2', '-4.51', '1', '2016-09-12 11:24:56', null);
INSERT INTO "public"."transaction" VALUES ('608', '2', '-393.94', '3', '2016-10-16 12:36:44', null);
INSERT INTO "public"."transaction" VALUES ('609', '2', '-204.05', '6', '2016-09-01 00:00:36', null);
INSERT INTO "public"."transaction" VALUES ('610', '2', '-1542.54', '19', '2016-09-01 02:16:31', null);
INSERT INTO "public"."transaction" VALUES ('611', '2', '-334.34', '18', '2016-09-12 13:09:31', null);
INSERT INTO "public"."transaction" VALUES ('612', '2', '-1495.95', '9', '2016-09-01 00:00:01', null);
INSERT INTO "public"."transaction" VALUES ('613', '2', '-1935.36', '16', '2016-10-22 18:54:03', null);
INSERT INTO "public"."transaction" VALUES ('614', '2', '966.13', '20', '2016-09-01 00:00:03', null);
INSERT INTO "public"."transaction" VALUES ('615', '2', '1208.21', '6', '2016-09-28 23:11:33', null);
INSERT INTO "public"."transaction" VALUES ('616', '2', '-7.32', '10', '2016-11-07 22:08:28', null);
INSERT INTO "public"."transaction" VALUES ('617', '2', '7.82', '3', '2016-09-14 19:51:29', null);
INSERT INTO "public"."transaction" VALUES ('618', '2', '-278.79', '18', '2016-09-15 18:45:13', null);
INSERT INTO "public"."transaction" VALUES ('619', '2', '-1276.28', '9', '2016-09-01 00:00:01', null);
INSERT INTO "public"."transaction" VALUES ('620', '2', '945.95', '17', '2016-09-22 05:55:28', null);
INSERT INTO "public"."transaction" VALUES ('621', '2', '-600.01', '19', '2016-09-01 00:12:16', null);
INSERT INTO "public"."transaction" VALUES ('622', '2', '-465.66', '16', '2016-09-01 02:04:41', null);
INSERT INTO "public"."transaction" VALUES ('623', '2', '994.99', '1', '2016-09-01 00:37:08', null);
INSERT INTO "public"."transaction" VALUES ('624', '2', '-44.85', '20', '2016-10-13 23:01:05', null);
INSERT INTO "public"."transaction" VALUES ('625', '2', '17.53', '16', '2016-09-10 18:38:16', null);
INSERT INTO "public"."transaction" VALUES ('626', '2', '0.61', '3', '2016-10-11 09:28:59', null);
INSERT INTO "public"."transaction" VALUES ('627', '2', '578.06', '9', '2016-09-01 20:14:38', null);
INSERT INTO "public"."transaction" VALUES ('628', '2', '-215.16', '1', '2016-09-25 22:53:13', null);
INSERT INTO "public"."transaction" VALUES ('629', '2', '-7.56', '18', '2016-09-01 01:02:28', null);
INSERT INTO "public"."transaction" VALUES ('630', '2', '-205.05', '19', '2016-09-27 05:42:37', null);
INSERT INTO "public"."transaction" VALUES ('631', '2', '-237.38', '6', '2016-10-05 06:25:23', null);
INSERT INTO "public"."transaction" VALUES ('632', '2', '255.03', '17', '2016-09-01 12:25:58', null);
INSERT INTO "public"."transaction" VALUES ('633', '2', '-521.22', '20', '2016-09-01 00:03:36', null);
INSERT INTO "public"."transaction" VALUES ('634', '2', '926.93', '10', '2016-09-11 21:19:44', null);
INSERT INTO "public"."transaction" VALUES ('635', '2', '1.55', '1', '2016-09-13 06:17:26', null);
INSERT INTO "public"."transaction" VALUES ('636', '2', '1059.11', '17', '2016-10-01 03:06:59', null);
INSERT INTO "public"."transaction" VALUES ('637', '2', '-218.08', '3', '2016-09-01 00:00:53', null);
INSERT INTO "public"."transaction" VALUES ('638', '2', '320.03', '6', '2016-09-01 03:44:19', null);
INSERT INTO "public"."transaction" VALUES ('639', '2', '287.03', '20', '2016-09-23 11:40:55', null);
INSERT INTO "public"."transaction" VALUES ('640', '2', '535.54', '16', '2016-09-01 10:03:51', null);
INSERT INTO "public"."transaction" VALUES ('641', '2', '-259.59', '10', '2016-09-15 06:45:47', null);
INSERT INTO "public"."transaction" VALUES ('642', '2', '-624.00', '19', '2016-11-11 14:25:31', null);
INSERT INTO "public"."transaction" VALUES ('643', '2', '561.06', '9', '2016-09-02 01:48:12', null);
INSERT INTO "public"."transaction" VALUES ('644', '2', '-517.23', '18', '2016-10-13 21:06:20', null);
INSERT INTO "public"."transaction" VALUES ('645', '2', '1000.10', '20', '2016-10-01 04:12:24', null);
INSERT INTO "public"."transaction" VALUES ('646', '2', '-320.32', '16', '2016-10-08 02:48:58', null);
INSERT INTO "public"."transaction" VALUES ('647', '2', '233.02', '17', '2016-10-15 16:00:41', null);
INSERT INTO "public"."transaction" VALUES ('648', '2', '288.03', '3', '2016-09-11 21:35:10', null);
INSERT INTO "public"."transaction" VALUES ('649', '2', '325.03', '1', '2016-09-01 01:29:42', null);
INSERT INTO "public"."transaction" VALUES ('650', '2', '-1661.22', '18', '2016-11-06 05:29:41', null);
INSERT INTO "public"."transaction" VALUES ('651', '2', '-237.24', '10', '2016-09-01 21:56:30', null);
INSERT INTO "public"."transaction" VALUES ('652', '2', '-326.27', '19', '2016-09-24 14:13:05', null);
INSERT INTO "public"."transaction" VALUES ('653', '2', '311.03', '6', '2016-09-19 15:54:10', null);
INSERT INTO "public"."transaction" VALUES ('654', '2', '-217.22', '9', '2016-09-20 02:19:04', null);
INSERT INTO "public"."transaction" VALUES ('655', '2', '601.06', '20', '2016-10-07 03:24:08', null);
INSERT INTO "public"."transaction" VALUES ('656', '2', '392.39', '17', '2016-09-30 09:20:13', null);
INSERT INTO "public"."transaction" VALUES ('657', '2', '404.04', '6', '2016-09-06 18:53:11', null);
INSERT INTO "public"."transaction" VALUES ('658', '2', '-212.21', '9', '2016-10-07 06:14:52', null);
INSERT INTO "public"."transaction" VALUES ('659', '2', '854.00', '3', '2016-09-29 20:16:07', null);
INSERT INTO "public"."transaction" VALUES ('660', '2', '-353.54', '1', '2016-09-01 00:14:36', null);
INSERT INTO "public"."transaction" VALUES ('661', '2', '504.05', '18', '2016-10-10 11:34:20', null);
INSERT INTO "public"."transaction" VALUES ('662', '2', '397.40', '10', '2016-09-29 22:34:47', null);
INSERT INTO "public"."transaction" VALUES ('663', '2', '14.17', '16', '2016-10-03 12:34:26', null);
INSERT INTO "public"."transaction" VALUES ('664', '2', '-89.00', '19', '2016-09-23 13:50:59', null);
INSERT INTO "public"."transaction" VALUES ('665', '2', '0.09', '9', '2016-09-02 01:43:54', null);
INSERT INTO "public"."transaction" VALUES ('666', '2', '219.02', '20', '2016-09-10 22:07:01', null);
INSERT INTO "public"."transaction" VALUES ('667', '2', '-163.46', '6', '2016-11-06 20:03:08', null);
INSERT INTO "public"."transaction" VALUES ('668', '2', '1770.77', '1', '2016-10-15 18:14:12', null);
INSERT INTO "public"."transaction" VALUES ('669', '2', '1267.13', '10', '2016-09-01 22:04:26', null);
INSERT INTO "public"."transaction" VALUES ('670', '2', '-0.73', '17', '2016-09-29 20:23:20', null);
INSERT INTO "public"."transaction" VALUES ('671', '2', '-535.35', '18', '2016-09-01 00:53:57', null);
INSERT INTO "public"."transaction" VALUES ('672', '2', '388.62', '3', '2016-10-07 04:32:21', null);
INSERT INTO "public"."transaction" VALUES ('673', '2', '1345.13', '16', '2016-11-06 12:51:40', null);
INSERT INTO "public"."transaction" VALUES ('674', '2', '0.19', '19', '2016-09-04 01:47:20', null);
INSERT INTO "public"."transaction" VALUES ('675', '2', '-654.54', '10', '2016-09-01 00:01:23', null);
INSERT INTO "public"."transaction" VALUES ('676', '2', '-1173.17', '9', '2016-10-17 20:43:37', null);
INSERT INTO "public"."transaction" VALUES ('677', '2', '357.04', '16', '2016-10-23 22:28:42', null);
INSERT INTO "public"."transaction" VALUES ('678', '2', '-0.04', '6', '2016-09-24 04:56:17', null);
INSERT INTO "public"."transaction" VALUES ('679', '2', '382.38', '1', '2016-09-30 05:04:18', null);
INSERT INTO "public"."transaction" VALUES ('680', '2', '359.04', '18', '2016-09-17 15:30:41', null);
INSERT INTO "public"."transaction" VALUES ('681', '2', '336.03', '17', '2016-09-01 00:08:16', null);
INSERT INTO "public"."transaction" VALUES ('682', '2', '-377.78', '20', '2016-10-19 16:33:36', null);
INSERT INTO "public"."transaction" VALUES ('683', '2', '-4.92', '19', '2016-10-11 08:31:46', null);
INSERT INTO "public"."transaction" VALUES ('684', '2', '517.52', '3', '2016-10-01 22:04:56', null);
INSERT INTO "public"."transaction" VALUES ('685', '2', '-1330.31', '16', '2016-10-06 22:43:18', null);
INSERT INTO "public"."transaction" VALUES ('686', '2', '738.00', '3', '2016-09-01 00:08:02', null);
INSERT INTO "public"."transaction" VALUES ('687', '2', '-1.29', '10', '2016-09-14 22:50:38', null);
INSERT INTO "public"."transaction" VALUES ('688', '2', '468.47', '17', '2016-09-01 01:23:34', null);
INSERT INTO "public"."transaction" VALUES ('689', '2', '1649.16', '18', '2016-09-01 00:00:09', null);
INSERT INTO "public"."transaction" VALUES ('690', '2', '1328.13', '19', '2016-11-01 09:56:06', null);
INSERT INTO "public"."transaction" VALUES ('691', '2', '-232.91', '6', '2016-10-11 10:55:36', null);
INSERT INTO "public"."transaction" VALUES ('692', '2', '-925.25', '1', '2016-10-13 23:37:17', null);
INSERT INTO "public"."transaction" VALUES ('693', '2', '-258.58', '20', '2016-09-01 00:00:08', null);
INSERT INTO "public"."transaction" VALUES ('694', '2', '-1510.11', '9', '2016-09-09 16:36:07', null);
INSERT INTO "public"."transaction" VALUES ('695', '2', '0.56', '18', '2016-09-21 14:14:02', null);
INSERT INTO "public"."transaction" VALUES ('696', '2', '258.03', '10', '2016-09-05 22:47:13', null);
INSERT INTO "public"."transaction" VALUES ('697', '2', '-480.81', '17', '2016-09-01 00:42:02', null);
INSERT INTO "public"."transaction" VALUES ('698', '2', '-795.95', '16', '2016-09-01 00:00:18', null);
INSERT INTO "public"."transaction" VALUES ('699', '2', '-0.21', '1', '2016-09-08 02:28:23', null);
INSERT INTO "public"."transaction" VALUES ('700', '2', '0.85', '6', '2016-09-11 15:12:57', null);
INSERT INTO "public"."transaction" VALUES ('701', '2', '1846.18', '19', '2016-09-01 00:14:15', null);
INSERT INTO "public"."transaction" VALUES ('702', '2', '-313.31', '9', '2016-11-05 09:27:00', null);
INSERT INTO "public"."transaction" VALUES ('703', '2', '-45.98', '3', '2016-10-24 21:27:45', null);
INSERT INTO "public"."transaction" VALUES ('704', '2', '-1394.39', '20', '2016-10-25 23:01:19', null);
INSERT INTO "public"."transaction" VALUES ('705', '2', '421.04', '9', '2016-10-19 10:05:05', null);
INSERT INTO "public"."transaction" VALUES ('706', '2', '-1089.90', '19', '2016-09-01 00:16:39', null);
INSERT INTO "public"."transaction" VALUES ('707', '2', '-980.81', '3', '2016-10-03 04:04:01', null);
INSERT INTO "public"."transaction" VALUES ('708', '2', '475.05', '16', '2016-09-19 07:54:21', null);
INSERT INTO "public"."transaction" VALUES ('709', '2', '288.03', '20', '2016-10-19 18:34:12', null);
INSERT INTO "public"."transaction" VALUES ('710', '2', '-6.55', '17', '2016-10-02 22:55:30', null);
INSERT INTO "public"."transaction" VALUES ('711', '2', '605.06', '1', '2016-09-02 14:42:40', null);
INSERT INTO "public"."transaction" VALUES ('712', '2', '330.03', '10', '2016-09-02 01:10:29', null);
INSERT INTO "public"."transaction" VALUES ('713', '2', '-999.00', '6', '2016-09-01 00:01:08', null);
INSERT INTO "public"."transaction" VALUES ('714', '2', '1256.13', '18', '2016-10-16 09:35:08', null);
INSERT INTO "public"."transaction" VALUES ('715', '2', '336.71', '6', '2016-10-15 13:02:38', null);
INSERT INTO "public"."transaction" VALUES ('716', '2', '-930.30', '20', '2016-09-02 01:21:44', null);
INSERT INTO "public"."transaction" VALUES ('717', '2', '936.00', '3', '2016-10-01 17:05:56', null);
INSERT INTO "public"."transaction" VALUES ('718', '2', '-206.06', '16', '2016-09-01 00:03:28', null);
INSERT INTO "public"."transaction" VALUES ('719', '2', '-581.81', '18', '2016-09-24 13:20:30', null);
INSERT INTO "public"."transaction" VALUES ('720', '2', '-446.46', '17', '2016-09-17 10:13:48', null);
INSERT INTO "public"."transaction" VALUES ('721', '2', '64.97', '10', '2016-11-05 11:55:08', null);
INSERT INTO "public"."transaction" VALUES ('722', '2', '516.52', '1', '2016-10-06 17:18:03', null);
INSERT INTO "public"."transaction" VALUES ('723', '2', '217.02', '19', '2016-10-22 15:32:56', null);
INSERT INTO "public"."transaction" VALUES ('724', '2', '0.05', '9', '2016-10-16 11:01:21', null);
INSERT INTO "public"."transaction" VALUES ('725', '2', '220.22', '18', '2016-10-08 15:04:20', null);
INSERT INTO "public"."transaction" VALUES ('726', '2', '397.04', '1', '2016-09-01 00:00:28', null);
INSERT INTO "public"."transaction" VALUES ('727', '2', '-265.27', '9', '2016-09-01 00:00:17', null);
INSERT INTO "public"."transaction" VALUES ('728', '2', '-1107.07', '17', '2016-09-04 16:33:32', null);
INSERT INTO "public"."transaction" VALUES ('729', '2', '-1552.53', '16', '2016-10-02 21:06:11', null);
INSERT INTO "public"."transaction" VALUES ('730', '2', '302.03', '20', '2016-09-19 01:28:29', null);
INSERT INTO "public"."transaction" VALUES ('731', '2', '267.03', '6', '2016-09-01 08:19:54', null);
INSERT INTO "public"."transaction" VALUES ('732', '2', '-977.98', '3', '2016-09-23 17:17:38', null);
INSERT INTO "public"."transaction" VALUES ('733', '2', '-242.24', '19', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('734', '2', '-241.24', '10', '2016-10-28 20:39:44', null);
INSERT INTO "public"."transaction" VALUES ('735', '2', '420.04', '6', '2016-10-01 22:40:41', null);
INSERT INTO "public"."transaction" VALUES ('736', '2', '1021.10', '10', '2016-09-12 15:30:07', null);
INSERT INTO "public"."transaction" VALUES ('737', '2', '549.05', '17', '2016-09-04 15:52:58', null);
INSERT INTO "public"."transaction" VALUES ('738', '2', '1514.15', '3', '2016-11-04 20:45:06', null);
INSERT INTO "public"."transaction" VALUES ('739', '2', '0.68', '1', '2016-10-16 12:33:35', null);
INSERT INTO "public"."transaction" VALUES ('740', '2', '-248.49', '18', '2016-09-12 07:45:45', null);
INSERT INTO "public"."transaction" VALUES ('741', '2', '-1161.61', '19', '2016-09-12 19:46:13', null);
INSERT INTO "public"."transaction" VALUES ('742', '2', '-9.73', '9', '2016-10-20 06:11:35', null);
INSERT INTO "public"."transaction" VALUES ('743', '2', '-1576.77', '20', '2016-10-11 19:34:39', null);
INSERT INTO "public"."transaction" VALUES ('744', '2', '1257.26', '16', '2016-09-21 08:30:04', null);
INSERT INTO "public"."transaction" VALUES ('745', '2', '-380.80', '19', '2016-09-12 17:26:39', null);
INSERT INTO "public"."transaction" VALUES ('746', '2', '9.97', '1', '2016-11-08 02:27:05', null);
INSERT INTO "public"."transaction" VALUES ('747', '2', '-294.29', '18', '2016-09-01 00:00:38', null);
INSERT INTO "public"."transaction" VALUES ('748', '2', '619.62', '3', '2016-09-01 00:00:52', null);
INSERT INTO "public"."transaction" VALUES ('749', '2', '348.03', '6', '2016-09-11 16:04:06', null);
INSERT INTO "public"."transaction" VALUES ('750', '2', '-312.13', '9', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('751', '2', '224.22', '16', '2016-09-23 06:31:21', null);
INSERT INTO "public"."transaction" VALUES ('752', '2', '886.09', '17', '2016-10-10 20:17:44', null);
INSERT INTO "public"."transaction" VALUES ('753', '2', '451.45', '20', '2016-10-11 16:36:51', null);
INSERT INTO "public"."transaction" VALUES ('754', '2', '-377.38', '10', '2016-09-13 18:42:55', null);
INSERT INTO "public"."transaction" VALUES ('755', '2', '-466.00', '6', '2016-11-01 12:30:32', null);
INSERT INTO "public"."transaction" VALUES ('756', '2', '65.08', '10', '2016-09-01 10:31:43', null);
INSERT INTO "public"."transaction" VALUES ('757', '2', '5.39', '20', '2016-09-10 01:20:37', null);
INSERT INTO "public"."transaction" VALUES ('758', '2', '1817.82', '9', '2016-09-02 01:59:44', null);
INSERT INTO "public"."transaction" VALUES ('759', '2', '811.81', '3', '2016-09-01 00:00:03', null);
INSERT INTO "public"."transaction" VALUES ('760', '2', '-1871.72', '19', '2016-09-10 20:44:31', null);
INSERT INTO "public"."transaction" VALUES ('761', '2', '269.03', '1', '2016-09-22 19:39:25', null);
INSERT INTO "public"."transaction" VALUES ('762', '2', '227.23', '16', '2016-09-01 00:00:05', null);
INSERT INTO "public"."transaction" VALUES ('763', '2', '1294.13', '18', '2016-10-16 12:42:49', null);
INSERT INTO "public"."transaction" VALUES ('764', '2', '-217.17', '17', '2016-09-28 20:05:37', null);
INSERT INTO "public"."transaction" VALUES ('765', '2', '-524.24', '17', '2016-09-01 00:00:43', null);
INSERT INTO "public"."transaction" VALUES ('766', '2', '-244.89', '10', '2016-09-25 01:36:39', null);
INSERT INTO "public"."transaction" VALUES ('767', '2', '-0.08', '6', '2016-10-16 20:13:21', null);
INSERT INTO "public"."transaction" VALUES ('768', '2', '771.77', '20', '2016-09-22 10:41:54', null);
INSERT INTO "public"."transaction" VALUES ('769', '2', '-375.38', '3', '2016-10-20 02:52:51', null);
INSERT INTO "public"."transaction" VALUES ('770', '2', '631.06', '9', '2016-10-23 18:25:39', null);
INSERT INTO "public"."transaction" VALUES ('771', '2', '842.08', '18', '2016-09-01 09:59:15', null);
INSERT INTO "public"."transaction" VALUES ('772', '2', '1783.78', '1', '2016-09-01 00:00:43', null);
INSERT INTO "public"."transaction" VALUES ('773', '2', '84.92', '19', '2016-09-20 13:31:30', null);
INSERT INTO "public"."transaction" VALUES ('774', '2', '39.31', '16', '2016-10-27 11:31:49', null);
INSERT INTO "public"."transaction" VALUES ('775', '2', '-1024.02', '19', '2016-09-01 00:01:31', null);
INSERT INTO "public"."transaction" VALUES ('776', '2', '-348.00', '20', '2016-10-20 01:13:53', null);
INSERT INTO "public"."transaction" VALUES ('777', '2', '-682.83', '18', '2016-11-06 19:38:27', null);
INSERT INTO "public"."transaction" VALUES ('778', '2', '-306.31', '10', '2016-09-16 09:36:51', null);
INSERT INTO "public"."transaction" VALUES ('779', '2', '0.03', '3', '2016-10-30 09:56:21', null);
INSERT INTO "public"."transaction" VALUES ('780', '2', '1076.11', '16', '2016-09-28 12:08:15', null);
INSERT INTO "public"."transaction" VALUES ('781', '2', '2.15', '9', '2016-09-06 12:30:37', null);
INSERT INTO "public"."transaction" VALUES ('782', '2', '401.04', '1', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('783', '2', '753.08', '6', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('784', '2', '1640.64', '17', '2016-10-06 10:25:08', null);
INSERT INTO "public"."transaction" VALUES ('785', '2', '971.97', '18', '2016-11-05 17:27:14', null);
INSERT INTO "public"."transaction" VALUES ('786', '2', '-323.00', '10', '2016-09-01 00:00:03', null);
INSERT INTO "public"."transaction" VALUES ('787', '2', '0.05', '3', '2016-10-08 13:13:54', null);
INSERT INTO "public"."transaction" VALUES ('788', '2', '0.72', '19', '2016-09-10 19:16:51', null);
INSERT INTO "public"."transaction" VALUES ('789', '2', '5.47', '16', '2016-09-09 01:09:21', null);
INSERT INTO "public"."transaction" VALUES ('790', '2', '331.33', '9', '2016-09-01 01:51:41', null);
INSERT INTO "public"."transaction" VALUES ('791', '2', '-0.96', '1', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('792', '2', '-1615.16', '17', '2016-09-09 13:19:53', null);
INSERT INTO "public"."transaction" VALUES ('793', '2', '-1444.42', '20', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('794', '2', '6.52', '6', '2016-09-01 05:05:42', null);
INSERT INTO "public"."transaction" VALUES ('795', '2', '-385.86', '17', '2016-09-27 21:28:07', null);
INSERT INTO "public"."transaction" VALUES ('796', '2', '353.04', '18', '2016-09-01 00:00:46', null);
INSERT INTO "public"."transaction" VALUES ('797', '2', '-172.61', '6', '2016-10-18 18:55:16', null);
INSERT INTO "public"."transaction" VALUES ('798', '2', '1778.18', '1', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('799', '2', '-1631.31', '9', '2016-09-11 07:02:49', null);
INSERT INTO "public"."transaction" VALUES ('800', '2', '1791.18', '19', '2016-10-21 21:09:57', null);
INSERT INTO "public"."transaction" VALUES ('801', '2', '-38.97', '10', '2016-10-02 21:26:10', null);
INSERT INTO "public"."transaction" VALUES ('802', '2', '-697.97', '20', '2016-09-09 20:23:02', null);
INSERT INTO "public"."transaction" VALUES ('803', '2', '980.10', '3', '2016-10-28 22:23:13', null);
INSERT INTO "public"."transaction" VALUES ('804', '2', '-0.08', '16', '2016-09-19 21:08:55', null);
INSERT INTO "public"."transaction" VALUES ('805', '2', '-1841.41', '10', '2016-09-10 15:47:45', null);
INSERT INTO "public"."transaction" VALUES ('806', '2', '-212.13', '20', '2016-09-21 20:28:15', null);
INSERT INTO "public"."transaction" VALUES ('807', '2', '1403.14', '18', '2016-09-01 21:00:13', null);
INSERT INTO "public"."transaction" VALUES ('808', '2', '395.04', '19', '2016-09-01 12:40:58', null);
INSERT INTO "public"."transaction" VALUES ('809', '2', '-430.30', '1', '2016-09-21 20:55:42', null);
INSERT INTO "public"."transaction" VALUES ('810', '2', '-0.55', '6', '2016-10-23 04:56:33', null);
INSERT INTO "public"."transaction" VALUES ('811', '2', '-1.08', '17', '2016-09-01 01:38:44', null);
INSERT INTO "public"."transaction" VALUES ('812', '2', '0.03', '3', '2016-10-31 19:59:37', null);
INSERT INTO "public"."transaction" VALUES ('813', '2', '307.03', '16', '2016-10-16 17:26:15', null);
INSERT INTO "public"."transaction" VALUES ('814', '2', '-348.49', '9', '2016-09-18 16:30:49', null);
INSERT INTO "public"."transaction" VALUES ('815', '2', '-766.02', '6', '2016-10-07 04:13:03', null);
INSERT INTO "public"."transaction" VALUES ('816', '2', '272.03', '10', '2016-10-08 02:56:11', null);
INSERT INTO "public"."transaction" VALUES ('817', '2', '846.85', '9', '2016-09-25 23:27:14', null);
INSERT INTO "public"."transaction" VALUES ('818', '2', '250.25', '1', '2016-11-01 14:22:45', null);
INSERT INTO "public"."transaction" VALUES ('819', '2', '328.03', '18', '2016-10-02 00:15:31', null);
INSERT INTO "public"."transaction" VALUES ('820', '2', '1791.79', '3', '2016-09-01 00:13:01', null);
INSERT INTO "public"."transaction" VALUES ('821', '2', '36.32', '17', '2016-09-01 00:05:15', null);
INSERT INTO "public"."transaction" VALUES ('822', '2', '-537.38', '19', '2016-10-10 09:32:58', null);
INSERT INTO "public"."transaction" VALUES ('823', '2', '-1320.32', '20', '2016-10-01 17:04:15', null);
INSERT INTO "public"."transaction" VALUES ('824', '2', '-4.85', '16', '2016-10-09 18:38:51', null);
INSERT INTO "public"."transaction" VALUES ('825', '2', '-745.31', '20', '2016-09-10 11:51:21', null);
INSERT INTO "public"."transaction" VALUES ('826', '2', '585.59', '17', '2016-09-16 07:22:54', null);
INSERT INTO "public"."transaction" VALUES ('827', '2', '-211.11', '3', '2016-10-07 00:07:22', null);
INSERT INTO "public"."transaction" VALUES ('828', '2', '978.98', '6', '2016-10-03 21:56:42', null);
INSERT INTO "public"."transaction" VALUES ('829', '2', '381.04', '18', '2016-09-21 10:59:10', null);
INSERT INTO "public"."transaction" VALUES ('830', '2', '1298.13', '9', '2016-09-05 01:03:05', null);
INSERT INTO "public"."transaction" VALUES ('831', '2', '808.86', '19', '2016-09-01 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('832', '2', '-355.55', '10', '2016-10-15 02:52:53', null);
INSERT INTO "public"."transaction" VALUES ('833', '2', '285.29', '1', '2016-09-16 00:49:03', null);
INSERT INTO "public"."transaction" VALUES ('834', '2', '0.01', '16', '2016-10-27 14:05:26', null);
INSERT INTO "public"."transaction" VALUES ('835', '2', '-0.06', '6', '2016-09-01 00:19:43', null);
INSERT INTO "public"."transaction" VALUES ('836', '2', '251.03', '9', '2016-10-17 21:16:41', null);
INSERT INTO "public"."transaction" VALUES ('837', '2', '-258.26', '20', '2016-09-18 20:51:42', null);
INSERT INTO "public"."transaction" VALUES ('838', '2', '-272.27', '10', '2016-09-09 02:03:35', null);
INSERT INTO "public"."transaction" VALUES ('839', '2', '-1.78', '18', '2016-09-18 09:33:47', null);
INSERT INTO "public"."transaction" VALUES ('840', '2', '0.97', '16', '2016-09-01 00:09:07', null);
INSERT INTO "public"."transaction" VALUES ('841', '2', '344.34', '17', '2016-09-10 03:15:30', null);
INSERT INTO "public"."transaction" VALUES ('842', '2', '0.41', '1', '2016-10-07 10:06:06', null);
INSERT INTO "public"."transaction" VALUES ('843', '2', '299.30', '3', '2016-11-08 06:41:25', null);
INSERT INTO "public"."transaction" VALUES ('844', '2', '1452.15', '19', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('845', '2', '-253.25', '1', '2016-10-15 07:48:27', null);
INSERT INTO "public"."transaction" VALUES ('846', '2', '-0.03', '16', '2016-09-01 00:32:05', null);
INSERT INTO "public"."transaction" VALUES ('847', '2', '-358.00', '6', '2016-11-12 05:14:36', null);
INSERT INTO "public"."transaction" VALUES ('848', '2', '537.05', '3', '2016-09-30 07:58:21', null);
INSERT INTO "public"."transaction" VALUES ('849', '2', '-17.16', '17', '2016-10-14 10:41:21', null);
INSERT INTO "public"."transaction" VALUES ('850', '2', '698.07', '18', '2016-09-27 04:56:58', null);
INSERT INTO "public"."transaction" VALUES ('851', '2', '1025.10', '19', '2016-10-15 04:04:33', null);
INSERT INTO "public"."transaction" VALUES ('852', '2', '-0.05', '20', '2016-09-28 21:07:49', null);
INSERT INTO "public"."transaction" VALUES ('853', '2', '1776.18', '10', '2016-09-01 00:01:16', null);
INSERT INTO "public"."transaction" VALUES ('854', '2', '0.04', '9', '2016-09-01 12:25:11', null);
INSERT INTO "public"."transaction" VALUES ('855', '2', '388.39', '10', '2016-10-15 02:36:03', null);
INSERT INTO "public"."transaction" VALUES ('856', '2', '-6.91', '17', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('857', '2', '1359.36', '9', '2016-09-01 00:59:59', null);
INSERT INTO "public"."transaction" VALUES ('858', '2', '419.42', '16', '2016-10-07 02:05:11', null);
INSERT INTO "public"."transaction" VALUES ('859', '2', '-206.06', '3', '2016-10-01 23:59:20', null);
INSERT INTO "public"."transaction" VALUES ('860', '2', '846.08', '1', '2016-11-08 08:26:29', null);
INSERT INTO "public"."transaction" VALUES ('861', '2', '7.49', '18', '2016-09-01 01:43:32', null);
INSERT INTO "public"."transaction" VALUES ('862', '2', '-521.21', '20', '2016-09-01 02:30:40', null);
INSERT INTO "public"."transaction" VALUES ('863', '2', '524.05', '6', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('864', '2', '0.00', '19', '2016-11-01 04:45:29', null);
INSERT INTO "public"."transaction" VALUES ('865', '2', '-1166.17', '6', '2016-09-10 23:34:02', null);
INSERT INTO "public"."transaction" VALUES ('866', '2', '447.00', '9', '2016-09-01 22:02:27', null);
INSERT INTO "public"."transaction" VALUES ('867', '2', '0.15', '19', '2016-09-11 01:09:55', null);
INSERT INTO "public"."transaction" VALUES ('868', '2', '344.03', '16', '2016-09-14 02:30:12', null);
INSERT INTO "public"."transaction" VALUES ('869', '2', '945.00', '20', '2016-09-14 11:56:56', null);
INSERT INTO "public"."transaction" VALUES ('870', '2', '699.13', '1', '2016-10-02 07:48:27', null);
INSERT INTO "public"."transaction" VALUES ('871', '2', '-0.04', '18', '2016-11-06 08:12:39', null);
INSERT INTO "public"."transaction" VALUES ('872', '2', '-423.24', '3', '2016-09-01 02:13:36', null);
INSERT INTO "public"."transaction" VALUES ('873', '2', '326.03', '17', '2016-11-06 03:51:18', null);
INSERT INTO "public"."transaction" VALUES ('874', '2', '223.22', '10', '2016-10-19 21:52:45', null);
INSERT INTO "public"."transaction" VALUES ('875', '2', '-1721.21', '10', '2016-09-16 00:46:59', null);
INSERT INTO "public"."transaction" VALUES ('876', '2', '-461.61', '3', '2016-09-01 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('877', '2', '1768.77', '1', '2016-09-02 07:22:56', null);
INSERT INTO "public"."transaction" VALUES ('878', '2', '1237.24', '20', '2016-09-01 00:00:34', null);
INSERT INTO "public"."transaction" VALUES ('879', '2', '305.31', '16', '2016-09-01 00:09:04', null);
INSERT INTO "public"."transaction" VALUES ('880', '2', '-577.78', '6', '2016-09-23 20:08:15', null);
INSERT INTO "public"."transaction" VALUES ('881', '2', '-396.40', '9', '2016-09-09 18:59:05', null);
INSERT INTO "public"."transaction" VALUES ('882', '2', '-355.36', '18', '2016-09-01 00:00:06', null);
INSERT INTO "public"."transaction" VALUES ('883', '2', '-205.21', '19', '2016-09-26 21:14:25', null);
INSERT INTO "public"."transaction" VALUES ('884', '2', '-378.78', '17', '2016-09-20 22:44:48', null);
INSERT INTO "public"."transaction" VALUES ('885', '2', '-201.20', '20', '2016-09-01 02:39:17', null);
INSERT INTO "public"."transaction" VALUES ('886', '2', '1729.17', '17', '2016-10-17 08:03:45', null);
INSERT INTO "public"."transaction" VALUES ('887', '2', '1445.14', '9', '2016-10-18 03:30:07', null);
INSERT INTO "public"."transaction" VALUES ('888', '2', '-267.67', '1', '2016-09-12 21:52:43', null);
INSERT INTO "public"."transaction" VALUES ('889', '2', '-1875.76', '3', '2016-09-01 00:06:15', null);
INSERT INTO "public"."transaction" VALUES ('890', '2', '365.04', '16', '2016-10-17 17:08:27', null);
INSERT INTO "public"."transaction" VALUES ('891', '2', '-298.98', '18', '2016-09-10 07:45:40', null);
INSERT INTO "public"."transaction" VALUES ('892', '2', '575.37', '19', '2016-09-20 12:40:21', null);
INSERT INTO "public"."transaction" VALUES ('893', '2', '-312.13', '10', '2016-09-01 00:08:39', null);
INSERT INTO "public"."transaction" VALUES ('894', '2', '317.03', '6', '2016-10-11 13:17:48', null);
INSERT INTO "public"."transaction" VALUES ('895', '2', '85.31', '3', '2016-10-01 22:23:45', null);
INSERT INTO "public"."transaction" VALUES ('896', '2', '-318.19', '6', '2016-09-17 10:01:02', null);
INSERT INTO "public"."transaction" VALUES ('897', '2', '-0.94', '18', '2016-09-13 20:13:11', null);
INSERT INTO "public"."transaction" VALUES ('898', '2', '-63.64', '1', '2016-09-02 03:36:51', null);
INSERT INTO "public"."transaction" VALUES ('899', '2', '-1683.84', '16', '2016-09-13 20:48:05', null);
INSERT INTO "public"."transaction" VALUES ('900', '2', '-1023.02', '19', '2016-10-07 18:30:41', null);
INSERT INTO "public"."transaction" VALUES ('901', '2', '208.02', '10', '2016-10-30 16:29:32', null);
INSERT INTO "public"."transaction" VALUES ('902', '2', '-0.04', '9', '2016-09-01 00:00:09', null);
INSERT INTO "public"."transaction" VALUES ('903', '2', '0.14', '20', '2016-10-17 11:06:55', null);
INSERT INTO "public"."transaction" VALUES ('904', '2', '-274.75', '17', '2016-09-26 12:15:02', null);
INSERT INTO "public"."transaction" VALUES ('905', '2', '-1.16', '17', '2016-09-01 10:53:19', null);
INSERT INTO "public"."transaction" VALUES ('906', '2', '484.48', '19', '2016-09-12 20:06:08', null);
INSERT INTO "public"."transaction" VALUES ('907', '2', '-65.55', '3', '2016-09-25 04:23:03', null);
INSERT INTO "public"."transaction" VALUES ('908', '2', '425.04', '20', '2016-10-26 08:54:59', null);
INSERT INTO "public"."transaction" VALUES ('909', '2', '0.55', '10', '2016-09-24 23:57:08', null);
INSERT INTO "public"."transaction" VALUES ('910', '2', '0.77', '1', '2016-10-06 01:29:59', null);
INSERT INTO "public"."transaction" VALUES ('911', '2', '242.02', '9', '2016-11-16 03:54:58', null);
INSERT INTO "public"."transaction" VALUES ('912', '2', '-201.01', '6', '2016-09-01 02:10:25', null);
INSERT INTO "public"."transaction" VALUES ('913', '2', '-250.50', '18', '2016-10-09 14:29:13', null);
INSERT INTO "public"."transaction" VALUES ('914', '2', '-6.25', '16', '2016-09-28 14:40:06', null);
INSERT INTO "public"."transaction" VALUES ('915', '2', '327.03', '19', '2016-10-15 21:18:35', null);
INSERT INTO "public"."transaction" VALUES ('916', '2', '311.03', '20', '2016-10-03 19:47:57', null);
INSERT INTO "public"."transaction" VALUES ('917', '2', '104.62', '16', '2016-10-15 03:44:45', null);
INSERT INTO "public"."transaction" VALUES ('918', '2', '-470.47', '1', '2016-09-29 11:46:03', null);
INSERT INTO "public"."transaction" VALUES ('919', '2', '349.03', '10', '2016-09-21 11:16:58', null);
INSERT INTO "public"."transaction" VALUES ('920', '2', '1553.16', '17', '2016-10-09 22:56:34', null);
INSERT INTO "public"."transaction" VALUES ('921', '2', '-267.27', '9', '2016-10-28 01:08:00', null);
INSERT INTO "public"."transaction" VALUES ('922', '2', '430.43', '18', '2016-10-11 09:28:45', null);
INSERT INTO "public"."transaction" VALUES ('923', '2', '-240.40', '3', '2016-09-30 17:39:54', null);
INSERT INTO "public"."transaction" VALUES ('924', '2', '-399.40', '6', '2016-10-03 20:30:40', null);
INSERT INTO "public"."transaction" VALUES ('925', '2', '-976.76', '6', '2016-10-02 06:26:09', null);
INSERT INTO "public"."transaction" VALUES ('926', '2', '958.36', '16', '2016-10-12 21:29:39', null);
INSERT INTO "public"."transaction" VALUES ('927', '2', '982.71', '20', '2016-09-12 04:25:47', null);
INSERT INTO "public"."transaction" VALUES ('928', '2', '1422.42', '17', '2016-09-01 00:00:01', null);
INSERT INTO "public"."transaction" VALUES ('929', '2', '-252.25', '3', '2016-11-07 01:04:07', null);
INSERT INTO "public"."transaction" VALUES ('930', '2', '-933.34', '1', '2016-11-08 17:57:32', null);
INSERT INTO "public"."transaction" VALUES ('931', '2', '554.55', '10', '2016-09-01 02:02:15', null);
INSERT INTO "public"."transaction" VALUES ('932', '2', '279.03', '19', '2016-09-01 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('933', '2', '-829.83', '9', '2016-10-01 10:05:25', null);
INSERT INTO "public"."transaction" VALUES ('934', '2', '-0.01', '18', '2016-11-09 11:51:12', null);
INSERT INTO "public"."transaction" VALUES ('935', '2', '680.68', '18', '2016-09-08 09:19:54', null);
INSERT INTO "public"."transaction" VALUES ('936', '2', '-236.37', '20', '2016-09-01 02:26:08', null);
INSERT INTO "public"."transaction" VALUES ('937', '2', '186.35', '16', '2016-09-23 07:35:00', null);
INSERT INTO "public"."transaction" VALUES ('938', '2', '0.00', '3', '2016-09-21 17:28:28', null);
INSERT INTO "public"."transaction" VALUES ('939', '2', '984.93', '17', '2016-09-01 00:01:15', null);
INSERT INTO "public"."transaction" VALUES ('940', '2', '576.02', '1', '2016-10-02 07:56:23', null);
INSERT INTO "public"."transaction" VALUES ('941', '2', '-369.37', '6', '2016-09-01 00:04:25', null);
INSERT INTO "public"."transaction" VALUES ('942', '2', '-384.38', '9', '2016-10-01 21:06:44', null);
INSERT INTO "public"."transaction" VALUES ('943', '2', '-291.92', '19', '2016-11-08 21:41:58', null);
INSERT INTO "public"."transaction" VALUES ('944', '2', '-370.37', '10', '2016-10-11 07:07:19', null);
INSERT INTO "public"."transaction" VALUES ('945', '2', '-579.79', '18', '2016-10-14 01:53:44', null);
INSERT INTO "public"."transaction" VALUES ('946', '2', '1.59', '20', '2016-10-15 12:03:24', null);
INSERT INTO "public"."transaction" VALUES ('947', '2', '-546.47', '1', '2016-09-01 00:01:14', null);
INSERT INTO "public"."transaction" VALUES ('948', '2', '529.05', '17', '2016-09-17 06:21:15', null);
INSERT INTO "public"."transaction" VALUES ('949', '2', '33.21', '6', '2016-09-01 00:01:51', null);
INSERT INTO "public"."transaction" VALUES ('950', '2', '419.04', '10', '2016-11-19 11:46:41', null);
INSERT INTO "public"."transaction" VALUES ('951', '2', '-1488.49', '9', '2016-09-10 15:48:48', null);
INSERT INTO "public"."transaction" VALUES ('952', '2', '0.09', '16', '2016-09-10 00:27:58', null);
INSERT INTO "public"."transaction" VALUES ('953', '2', '-74.96', '19', '2016-09-17 12:13:30', null);
INSERT INTO "public"."transaction" VALUES ('954', '2', '-0.61', '3', '2016-09-11 21:05:42', null);
INSERT INTO "public"."transaction" VALUES ('955', '2', '298.30', '16', '2016-10-17 20:19:39', null);
INSERT INTO "public"."transaction" VALUES ('956', '2', '-238.39', '19', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('957', '2', '-1211.11', '9', '2016-09-09 00:03:29', null);
INSERT INTO "public"."transaction" VALUES ('958', '2', '-724.39', '1', '2016-09-17 10:46:18', null);
INSERT INTO "public"."transaction" VALUES ('959', '2', '306.00', '3', '2016-09-15 19:01:30', null);
INSERT INTO "public"."transaction" VALUES ('960', '2', '409.04', '17', '2016-11-13 21:26:59', null);
INSERT INTO "public"."transaction" VALUES ('961', '2', '1720.17', '6', '2016-10-06 07:04:59', null);
INSERT INTO "public"."transaction" VALUES ('962', '2', '-0.07', '20', '2016-09-15 23:35:26', null);
INSERT INTO "public"."transaction" VALUES ('963', '2', '695.70', '18', '2016-10-18 10:50:18', null);
INSERT INTO "public"."transaction" VALUES ('964', '2', '985.00', '10', '2016-09-01 22:15:34', null);
INSERT INTO "public"."transaction" VALUES ('965', '2', '5.62', '10', '2016-09-10 05:19:05', null);
INSERT INTO "public"."transaction" VALUES ('966', '2', '0.03', '9', '2016-09-21 14:23:32', null);
INSERT INTO "public"."transaction" VALUES ('967', '2', '262.26', '6', '2016-09-28 23:24:18', null);
INSERT INTO "public"."transaction" VALUES ('968', '2', '-542.43', '17', '2016-09-10 06:00:27', null);
INSERT INTO "public"."transaction" VALUES ('969', '2', '-1145.92', '3', '2016-09-01 00:00:29', null);
INSERT INTO "public"."transaction" VALUES ('970', '2', '1548.15', '20', '2016-10-11 22:53:43', null);
INSERT INTO "public"."transaction" VALUES ('971', '2', '-0.01', '19', '2016-10-12 04:14:00', null);
INSERT INTO "public"."transaction" VALUES ('972', '2', '-814.14', '1', '2016-10-19 18:26:50', null);
INSERT INTO "public"."transaction" VALUES ('973', '2', '-0.03', '16', '2016-09-05 04:07:12', null);
INSERT INTO "public"."transaction" VALUES ('974', '2', '1512.15', '18', '2016-10-13 22:00:08', null);
INSERT INTO "public"."transaction" VALUES ('975', '2', '731.07', '17', '2016-09-11 05:16:32', null);
INSERT INTO "public"."transaction" VALUES ('976', '2', '-650.00', '6', '2016-10-15 21:10:11', null);
INSERT INTO "public"."transaction" VALUES ('977', '2', '-621.62', '19', '2016-09-18 12:27:21', null);
INSERT INTO "public"."transaction" VALUES ('978', '2', '-0.71', '20', '2016-09-01 05:04:18', null);
INSERT INTO "public"."transaction" VALUES ('979', '2', '-582.83', '16', '2016-11-09 03:38:19', null);
INSERT INTO "public"."transaction" VALUES ('980', '2', '-1897.98', '18', '2016-09-10 16:11:59', null);
INSERT INTO "public"."transaction" VALUES ('981', '2', '-218.18', '10', '2016-11-18 18:18:17', null);
INSERT INTO "public"."transaction" VALUES ('982', '2', '-360.61', '9', '2016-10-01 01:35:42', null);
INSERT INTO "public"."transaction" VALUES ('983', '2', '1015.10', '3', '2016-10-12 14:31:53', null);
INSERT INTO "public"."transaction" VALUES ('984', '2', '1230.23', '1', '2016-09-01 00:17:44', null);
INSERT INTO "public"."transaction" VALUES ('985', '2', '589.06', '6', '2016-09-26 06:41:35', null);
INSERT INTO "public"."transaction" VALUES ('986', '2', '-349.49', '18', '2016-09-01 00:11:52', null);
INSERT INTO "public"."transaction" VALUES ('987', '2', '-0.70', '10', '2016-09-24 12:13:38', null);
INSERT INTO "public"."transaction" VALUES ('988', '2', '-300.00', '9', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('989', '2', '-619.75', '20', '2016-09-10 19:18:48', null);
INSERT INTO "public"."transaction" VALUES ('990', '2', '-16.24', '16', '2016-09-01 00:05:27', null);
INSERT INTO "public"."transaction" VALUES ('991', '2', '-219.19', '19', '2016-10-06 00:19:09', null);
INSERT INTO "public"."transaction" VALUES ('992', '2', '-0.70', '1', '2016-10-05 18:37:11', null);
INSERT INTO "public"."transaction" VALUES ('993', '2', '-432.43', '3', '2016-10-08 10:28:55', null);
INSERT INTO "public"."transaction" VALUES ('994', '2', '-413.27', '17', '2016-09-11 18:56:26', null);
INSERT INTO "public"."transaction" VALUES ('995', '2', '-310.10', '20', '2016-10-06 17:12:36', null);
INSERT INTO "public"."transaction" VALUES ('996', '2', '-234.34', '6', '2016-10-12 12:44:38', null);
INSERT INTO "public"."transaction" VALUES ('997', '2', '-1551.55', '18', '2016-10-25 08:01:59', null);
INSERT INTO "public"."transaction" VALUES ('998', '2', '-921.98', '16', '2016-09-01 00:05:52', null);
INSERT INTO "public"."transaction" VALUES ('999', '2', '-1655.55', '3', '2016-09-01 02:00:58', null);
INSERT INTO "public"."transaction" VALUES ('1000', '2', '981.00', '1', '2016-09-01 00:17:51', null);
INSERT INTO "public"."transaction" VALUES ('1001', '2', '312.19', '17', '2016-09-01 22:44:42', null);
INSERT INTO "public"."transaction" VALUES ('1002', '2', '478.48', '9', '2016-09-20 13:09:15', null);
INSERT INTO "public"."transaction" VALUES ('1003', '2', '251.03', '19', '2016-09-29 17:19:09', null);
INSERT INTO "public"."transaction" VALUES ('1004', '2', '331.03', '10', '2016-09-01 00:00:29', null);
INSERT INTO "public"."transaction" VALUES ('1005', '2', '413.41', '9', '2016-09-16 12:27:48', null);
INSERT INTO "public"."transaction" VALUES ('1006', '2', '1417.14', '16', '2016-11-05 00:54:46', null);
INSERT INTO "public"."transaction" VALUES ('1007', '2', '585.06', '6', '2016-09-01 01:09:24', null);
INSERT INTO "public"."transaction" VALUES ('1008', '2', '932.09', '10', '2016-11-03 12:43:54', null);
INSERT INTO "public"."transaction" VALUES ('1009', '2', '-321.32', '19', '2016-09-01 00:05:26', null);
INSERT INTO "public"."transaction" VALUES ('1010', '2', '-6.78', '3', '2016-09-21 13:45:17', null);
INSERT INTO "public"."transaction" VALUES ('1011', '2', '399.04', '18', '2016-10-15 09:48:55', null);
INSERT INTO "public"."transaction" VALUES ('1012', '2', '-16.50', '20', '2016-09-11 19:58:47', null);
INSERT INTO "public"."transaction" VALUES ('1013', '2', '301.03', '1', '2016-10-08 03:58:02', null);
INSERT INTO "public"."transaction" VALUES ('1014', '2', '526.53', '17', '2016-10-02 12:17:18', null);
INSERT INTO "public"."transaction" VALUES ('1015', '2', '-390.39', '17', '2016-10-07 16:51:45', null);
INSERT INTO "public"."transaction" VALUES ('1016', '2', '-759.76', '19', '2016-09-22 22:57:46', null);
INSERT INTO "public"."transaction" VALUES ('1017', '2', '-352.52', '20', '2016-10-20 04:53:57', null);
INSERT INTO "public"."transaction" VALUES ('1018', '2', '7.41', '6', '2016-09-01 01:28:06', null);
INSERT INTO "public"."transaction" VALUES ('1019', '2', '-549.75', '10', '2016-09-21 23:43:23', null);
INSERT INTO "public"."transaction" VALUES ('1020', '2', '634.00', '9', '2016-11-05 10:21:15', null);
INSERT INTO "public"."transaction" VALUES ('1021', '2', '-327.28', '16', '2016-10-23 23:53:35', null);
INSERT INTO "public"."transaction" VALUES ('1022', '2', '-805.00', '3', '2016-09-12 09:23:05', null);
INSERT INTO "public"."transaction" VALUES ('1023', '2', '-397.97', '1', '2016-09-28 00:47:50', null);
INSERT INTO "public"."transaction" VALUES ('1024', '2', '417.04', '18', '2016-09-01 00:00:07', null);
INSERT INTO "public"."transaction" VALUES ('1025', '2', '-240.00', '3', '2016-09-01 02:17:01', null);
INSERT INTO "public"."transaction" VALUES ('1026', '2', '392.39', '19', '2016-10-10 20:07:08', null);
INSERT INTO "public"."transaction" VALUES ('1027', '2', '1802.18', '16', '2016-09-01 00:00:06', null);
INSERT INTO "public"."transaction" VALUES ('1028', '2', '467.00', '1', '2016-09-29 23:39:32', null);
INSERT INTO "public"."transaction" VALUES ('1029', '2', '-1631.63', '10', '2016-09-12 23:21:07', null);
INSERT INTO "public"."transaction" VALUES ('1030', '2', '400.00', '9', '2016-09-01 00:12:16', null);
INSERT INTO "public"."transaction" VALUES ('1031', '2', '-297.98', '6', '2016-09-25 14:20:57', null);
INSERT INTO "public"."transaction" VALUES ('1032', '2', '-301.02', '18', '2016-09-01 00:04:46', null);
INSERT INTO "public"."transaction" VALUES ('1033', '2', '-268.68', '17', '2016-09-01 02:44:47', null);
INSERT INTO "public"."transaction" VALUES ('1034', '2', '568.06', '20', '2016-09-01 10:33:04', null);
INSERT INTO "public"."transaction" VALUES ('1035', '2', '0.72', '19', '2016-10-01 22:04:42', null);
INSERT INTO "public"."transaction" VALUES ('1036', '2', '343.00', '16', '2016-09-12 20:35:14', null);
INSERT INTO "public"."transaction" VALUES ('1037', '2', '3.83', '9', '2016-10-26 00:44:40', null);
INSERT INTO "public"."transaction" VALUES ('1038', '2', '1564.56', '17', '2016-09-01 00:08:51', null);
INSERT INTO "public"."transaction" VALUES ('1039', '2', '-361.36', '3', '2016-09-01 00:06:45', null);
INSERT INTO "public"."transaction" VALUES ('1040', '2', '776.00', '18', '2016-10-06 23:15:14', null);
INSERT INTO "public"."transaction" VALUES ('1041', '2', '129.96', '10', '2016-09-12 17:45:49', null);
INSERT INTO "public"."transaction" VALUES ('1042', '2', '-1788.89', '6', '2016-09-26 14:45:36', null);
INSERT INTO "public"."transaction" VALUES ('1043', '2', '1736.74', '1', '2016-10-13 03:07:18', null);
INSERT INTO "public"."transaction" VALUES ('1044', '2', '362.77', '20', '2016-09-01 00:00:08', null);
INSERT INTO "public"."transaction" VALUES ('1045', '2', '220.22', '19', '2016-09-10 02:14:07', null);
INSERT INTO "public"."transaction" VALUES ('1046', '2', '-305.31', '3', '2016-09-21 16:53:46', null);
INSERT INTO "public"."transaction" VALUES ('1047', '2', '-898.99', '20', '2016-09-01 00:00:49', null);
INSERT INTO "public"."transaction" VALUES ('1048', '2', '771.00', '16', '2016-09-01 00:04:29', null);
INSERT INTO "public"."transaction" VALUES ('1049', '2', '569.06', '6', '2016-09-01 00:00:46', null);
INSERT INTO "public"."transaction" VALUES ('1050', '2', '95.03', '1', '2016-09-26 15:53:15', null);
INSERT INTO "public"."transaction" VALUES ('1051', '2', '0.51', '18', '2016-09-15 23:44:40', null);
INSERT INTO "public"."transaction" VALUES ('1052', '2', '351.35', '9', '2016-10-09 08:08:29', null);
INSERT INTO "public"."transaction" VALUES ('1053', '2', '1901.56', '17', '2016-09-11 21:47:06', null);
INSERT INTO "public"."transaction" VALUES ('1054', '2', '-592.93', '10', '2016-11-06 11:35:32', null);
INSERT INTO "public"."transaction" VALUES ('1055', '2', '-398.99', '18', '2016-10-01 11:10:14', null);
INSERT INTO "public"."transaction" VALUES ('1056', '2', '-336.36', '16', '2016-09-01 22:45:25', null);
INSERT INTO "public"."transaction" VALUES ('1057', '2', '-0.31', '10', '2016-09-01 00:00:02', null);
INSERT INTO "public"."transaction" VALUES ('1058', '2', '766.08', '19', '2016-09-11 11:16:17', null);
INSERT INTO "public"."transaction" VALUES ('1059', '2', '-407.41', '20', '2016-09-01 00:06:04', null);
INSERT INTO "public"."transaction" VALUES ('1060', '2', '0.02', '3', '2016-09-28 16:02:19', null);
INSERT INTO "public"."transaction" VALUES ('1061', '2', '300.03', '9', '2016-09-26 15:33:38', null);
INSERT INTO "public"."transaction" VALUES ('1062', '2', '401.40', '17', '2016-11-02 21:29:21', null);
INSERT INTO "public"."transaction" VALUES ('1063', '2', '271.03', '1', '2016-10-20 16:16:14', null);
INSERT INTO "public"."transaction" VALUES ('1064', '2', '310.03', '6', '2016-10-23 19:27:58', null);
INSERT INTO "public"."transaction" VALUES ('1065', '2', '941.26', '18', '2016-09-01 08:41:11', null);
INSERT INTO "public"."transaction" VALUES ('1066', '2', '-8.86', '19', '2016-09-25 22:43:25', null);
INSERT INTO "public"."transaction" VALUES ('1067', '2', '440.04', '6', '2016-10-27 21:31:57', null);
INSERT INTO "public"."transaction" VALUES ('1068', '2', '41.76', '16', '2016-09-22 11:05:23', null);
INSERT INTO "public"."transaction" VALUES ('1069', '2', '-273.73', '20', '2016-10-21 05:18:09', null);
INSERT INTO "public"."transaction" VALUES ('1070', '2', '-271.71', '1', '2016-11-05 20:22:25', null);
INSERT INTO "public"."transaction" VALUES ('1071', '2', '-226.23', '17', '2016-10-17 22:38:25', null);
INSERT INTO "public"."transaction" VALUES ('1072', '2', '-260.61', '10', '2016-09-01 00:00:11', null);
INSERT INTO "public"."transaction" VALUES ('1073', '2', '-877.45', '9', '2016-11-17 20:51:53', null);
INSERT INTO "public"."transaction" VALUES ('1074', '2', '-289.89', '3', '2016-09-01 00:17:31', null);
INSERT INTO "public"."transaction" VALUES ('1075', '2', '-1684.84', '6', '2016-10-17 14:41:42', null);
INSERT INTO "public"."transaction" VALUES ('1076', '2', '275.03', '17', '2016-09-01 00:00:53', null);
INSERT INTO "public"."transaction" VALUES ('1077', '2', '390.39', '1', '2016-09-01 00:06:20', null);
INSERT INTO "public"."transaction" VALUES ('1078', '2', '638.06', '3', '2016-09-09 22:59:07', null);
INSERT INTO "public"."transaction" VALUES ('1079', '2', '-1738.38', '19', '2016-09-16 03:45:59', null);
INSERT INTO "public"."transaction" VALUES ('1080', '2', '-1786.86', '20', '2016-09-01 01:01:27', null);
INSERT INTO "public"."transaction" VALUES ('1081', '2', '1908.19', '16', '2016-09-01 00:06:36', null);
INSERT INTO "public"."transaction" VALUES ('1082', '2', '-209.09', '18', '2016-10-02 21:45:01', null);
INSERT INTO "public"."transaction" VALUES ('1083', '2', '203.02', '10', '2016-09-01 00:12:18', null);
INSERT INTO "public"."transaction" VALUES ('1084', '2', '509.05', '9', '2016-10-06 11:37:40', null);
INSERT INTO "public"."transaction" VALUES ('1085', '2', '-386.86', '16', '2016-09-27 05:41:52', null);
INSERT INTO "public"."transaction" VALUES ('1086', '2', '405.04', '3', '2016-09-12 17:29:27', null);
INSERT INTO "public"."transaction" VALUES ('1087', '2', '394.39', '20', '2016-09-01 00:00:09', null);
INSERT INTO "public"."transaction" VALUES ('1088', '2', '-2.34', '1', '2016-09-20 17:24:13', null);
INSERT INTO "public"."transaction" VALUES ('1089', '2', '-4.69', '9', '2016-11-03 13:12:02', null);
INSERT INTO "public"."transaction" VALUES ('1090', '2', '-561.62', '17', '2016-10-01 05:34:22', null);
INSERT INTO "public"."transaction" VALUES ('1091', '2', '1808.18', '10', '2016-09-01 02:20:26', null);
INSERT INTO "public"."transaction" VALUES ('1092', '2', '-211.12', '18', '2016-09-01 00:00:04', null);
INSERT INTO "public"."transaction" VALUES ('1093', '2', '1026.03', '6', '2016-09-21 06:32:55', null);
INSERT INTO "public"."transaction" VALUES ('1094', '2', '82.07', '19', '2016-09-11 15:04:33', null);
INSERT INTO "public"."transaction" VALUES ('1095', '2', '940.33', '9', '2016-10-06 09:07:24', null);
INSERT INTO "public"."transaction" VALUES ('1096', '2', '-1997.18', '6', '2016-09-01 00:00:27', null);
INSERT INTO "public"."transaction" VALUES ('1097', '2', '-408.08', '16', '2016-10-31 14:29:55', null);
INSERT INTO "public"."transaction" VALUES ('1098', '2', '61.07', '3', '2016-09-26 18:53:57', null);
INSERT INTO "public"."transaction" VALUES ('1099', '2', '-1427.28', '1', '2016-09-06 18:01:39', null);
INSERT INTO "public"."transaction" VALUES ('1100', '2', '-6.97', '19', '2016-09-01 02:43:44', null);
INSERT INTO "public"."transaction" VALUES ('1101', '2', '-1728.28', '10', '2016-09-19 04:43:36', null);
INSERT INTO "public"."transaction" VALUES ('1102', '2', '366.37', '18', '2016-09-11 00:55:03', null);
INSERT INTO "public"."transaction" VALUES ('1103', '2', '1567.57', '20', '2016-09-18 18:02:13', null);
INSERT INTO "public"."transaction" VALUES ('1104', '2', '-672.72', '17', '2016-10-13 17:23:20', null);
INSERT INTO "public"."transaction" VALUES ('1105', '2', '1962.20', '9', '2016-10-29 16:57:44', null);
INSERT INTO "public"."transaction" VALUES ('1106', '2', '92.08', '10', '2016-09-26 00:41:07', null);
INSERT INTO "public"."transaction" VALUES ('1107', '2', '1893.89', '3', '2016-10-01 07:32:38', null);
INSERT INTO "public"."transaction" VALUES ('1108', '2', '1969.20', '16', '2016-09-30 13:47:21', null);
INSERT INTO "public"."transaction" VALUES ('1109', '2', '977.98', '18', '2016-09-01 00:00:06', null);
INSERT INTO "public"."transaction" VALUES ('1110', '2', '-1576.58', '1', '2016-09-09 10:30:13', null);
INSERT INTO "public"."transaction" VALUES ('1111', '2', '343.34', '17', '2016-09-11 13:49:28', null);
INSERT INTO "public"."transaction" VALUES ('1112', '2', '270.27', '6', '2016-11-04 10:08:41', null);
INSERT INTO "public"."transaction" VALUES ('1113', '2', '-371.71', '20', '2016-09-01 00:01:22', null);
INSERT INTO "public"."transaction" VALUES ('1114', '2', '-0.09', '19', '2016-09-01 00:09:57', null);
INSERT INTO "public"."transaction" VALUES ('1115', '2', '-361.61', '1', '2016-09-09 02:20:54', null);
INSERT INTO "public"."transaction" VALUES ('1116', '2', '71.65', '3', '2016-09-01 00:00:10', null);
INSERT INTO "public"."transaction" VALUES ('1117', '2', '3.82', '17', '2016-09-19 06:08:48', null);
INSERT INTO "public"."transaction" VALUES ('1118', '2', '-1328.29', '6', '2016-09-01 00:00:44', null);
INSERT INTO "public"."transaction" VALUES ('1119', '2', '-1637.37', '9', '2016-10-10 15:07:21', null);
INSERT INTO "public"."transaction" VALUES ('1120', '2', '310.03', '20', '2016-10-26 23:59:05', null);
INSERT INTO "public"."transaction" VALUES ('1121', '2', '348.03', '18', '2016-10-04 12:29:45', null);
INSERT INTO "public"."transaction" VALUES ('1122', '2', '391.39', '16', '2016-09-09 15:59:28', null);
INSERT INTO "public"."transaction" VALUES ('1123', '2', '345.35', '19', '2016-10-06 14:49:51', null);
INSERT INTO "public"."transaction" VALUES ('1124', '2', '-242.24', '10', '2016-10-20 12:22:33', null);
INSERT INTO "public"."transaction" VALUES ('1125', '2', '598.06', '20', '2016-10-22 07:55:29', null);
INSERT INTO "public"."transaction" VALUES ('1126', '2', '-227.27', '9', '2016-10-14 23:52:08', null);
INSERT INTO "public"."transaction" VALUES ('1127', '2', '25.11', '10', '2016-10-02 19:59:04', null);
INSERT INTO "public"."transaction" VALUES ('1128', '2', '323.32', '19', '2016-09-05 07:18:04', null);
INSERT INTO "public"."transaction" VALUES ('1129', '2', '364.04', '3', '2016-10-05 14:32:13', null);
INSERT INTO "public"."transaction" VALUES ('1130', '2', '251.03', '16', '2016-11-09 20:40:48', null);
INSERT INTO "public"."transaction" VALUES ('1131', '2', '233.02', '6', '2016-09-08 00:48:17', null);
INSERT INTO "public"."transaction" VALUES ('1132', '2', '293.03', '1', '2016-10-15 23:38:33', null);
INSERT INTO "public"."transaction" VALUES ('1133', '2', '-1514.51', '17', '2016-09-17 23:04:05', null);
INSERT INTO "public"."transaction" VALUES ('1134', '2', '-0.07', '18', '2016-09-29 02:53:41', null);
INSERT INTO "public"."transaction" VALUES ('1135', '2', '515.05', '6', '2016-09-09 17:40:35', null);
INSERT INTO "public"."transaction" VALUES ('1136', '2', '648.06', '20', '2016-10-13 04:13:02', null);
INSERT INTO "public"."transaction" VALUES ('1137', '2', '587.06', '9', '2016-09-10 16:29:12', null);
INSERT INTO "public"."transaction" VALUES ('1138', '2', '480.05', '3', '2016-09-01 00:15:24', null);
INSERT INTO "public"."transaction" VALUES ('1139', '2', '235.02', '17', '2016-11-03 14:52:37', null);
INSERT INTO "public"."transaction" VALUES ('1140', '2', '0.08', '10', '2016-10-05 00:40:46', null);
INSERT INTO "public"."transaction" VALUES ('1141', '2', '460.05', '18', '2016-09-18 12:33:37', null);
INSERT INTO "public"."transaction" VALUES ('1142', '2', '-1920.20', '19', '2016-09-09 20:32:31', null);
INSERT INTO "public"."transaction" VALUES ('1143', '2', '-0.06', '16', '2016-09-05 12:41:14', null);
INSERT INTO "public"."transaction" VALUES ('1144', '2', '425.04', '1', '2016-09-11 13:32:46', null);
INSERT INTO "public"."transaction" VALUES ('1145', '2', '-0.09', '16', '2016-09-08 04:35:57', null);
INSERT INTO "public"."transaction" VALUES ('1146', '2', '-0.10', '19', '2016-09-13 15:10:30', null);
INSERT INTO "public"."transaction" VALUES ('1147', '2', '8.36', '6', '2016-09-01 00:13:16', null);
INSERT INTO "public"."transaction" VALUES ('1148', '2', '-4.77', '10', '2016-10-16 01:32:32', null);
INSERT INTO "public"."transaction" VALUES ('1149', '2', '0.00', '9', '2016-09-23 00:01:22', null);
INSERT INTO "public"."transaction" VALUES ('1150', '2', '-1878.88', '20', '2016-09-09 19:49:49', null);
INSERT INTO "public"."transaction" VALUES ('1151', '2', '-4.58', '18', '2016-11-18 22:50:07', null);
INSERT INTO "public"."transaction" VALUES ('1152', '2', '371.37', '1', '2016-11-10 14:35:10', null);
INSERT INTO "public"."transaction" VALUES ('1153', '2', '-967.97', '3', '2016-10-20 08:50:01', null);
INSERT INTO "public"."transaction" VALUES ('1154', '2', '2.80', '17', '2016-09-12 01:34:38', null);
INSERT INTO "public"."transaction" VALUES ('1155', '2', '931.95', '20', '2016-10-23 09:57:39', null);
INSERT INTO "public"."transaction" VALUES ('1156', '2', '-356.57', '1', '2016-09-24 17:21:53', null);
INSERT INTO "public"."transaction" VALUES ('1157', '2', '472.05', '17', '2016-09-13 08:39:08', null);
INSERT INTO "public"."transaction" VALUES ('1158', '2', '-339.40', '16', '2016-09-11 03:01:00', null);
INSERT INTO "public"."transaction" VALUES ('1159', '2', '50.00', '19', '2016-09-22 00:33:26', null);
INSERT INTO "public"."transaction" VALUES ('1160', '2', '-0.09', '6', '2016-10-15 11:17:09', null);
INSERT INTO "public"."transaction" VALUES ('1161', '2', '1789.18', '18', '2016-09-11 12:05:07', null);
INSERT INTO "public"."transaction" VALUES ('1162', '2', '-0.31', '9', '2016-09-01 00:00:03', null);
INSERT INTO "public"."transaction" VALUES ('1163', '2', '-237.24', '10', '2016-09-13 20:31:21', null);
INSERT INTO "public"."transaction" VALUES ('1164', '2', '-388.88', '3', '2016-09-07 05:13:54', null);
INSERT INTO "public"."transaction" VALUES ('1165', '2', '-317.18', '10', '2016-09-01 02:37:03', null);
INSERT INTO "public"."transaction" VALUES ('1166', '2', '0.92', '20', '2016-09-28 21:22:34', null);
INSERT INTO "public"."transaction" VALUES ('1167', '2', '-370.84', '19', '2016-10-05 23:31:55', null);
INSERT INTO "public"."transaction" VALUES ('1168', '2', '-0.76', '3', '2016-09-11 18:00:58', null);
INSERT INTO "public"."transaction" VALUES ('1169', '2', '-1090.91', '16', '2016-09-21 17:45:32', null);
INSERT INTO "public"."transaction" VALUES ('1170', '2', '-211.12', '6', '2016-10-16 12:44:05', null);
INSERT INTO "public"."transaction" VALUES ('1171', '2', '-207.07', '17', '2016-09-01 00:00:56', null);
INSERT INTO "public"."transaction" VALUES ('1172', '2', '1950.20', '9', '2016-10-15 22:22:26', null);
INSERT INTO "public"."transaction" VALUES ('1173', '2', '-318.18', '18', '2016-09-01 00:01:20', null);
INSERT INTO "public"."transaction" VALUES ('1174', '2', '-378.38', '1', '2016-10-23 04:03:02', null);

-- ----------------------------
-- Table structure for transaction_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."transaction_type" CASCADE;
CREATE TABLE "public"."transaction_type" (
"transaction_type_id" int4 DEFAULT nextval('transaction_type_transaction_type_id_seq'::regclass) NOT NULL,
"type_name" varchar(50) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of transaction_type
-- ----------------------------
INSERT INTO "public"."transaction_type" VALUES ('1', 'Rental Fee');
INSERT INTO "public"."transaction_type" VALUES ('2', 'Tuition Fee');
INSERT INTO "public"."transaction_type" VALUES ('3', 'Salary');
INSERT INTO "public"."transaction_type" VALUES ('4', 'Scholarship');

-- ----------------------------
-- View structure for apartment_occupation
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartment_occupation" AS
 SELECT count(li.person_id) AS beds_occupied,
    a.apartment_number,
    a.building_id,
    at.beds,
    (at.beds - count(li.person_id)) AS free_beds
   FROM ((apartment a
     LEFT JOIN lives_in li ON (((li.building_id = a.building_id) AND (li.apartment_number = a.apartment_number))))
     JOIN apartment_type at ON ((a.apartment_type_id = at.apartment_type_id)))
  GROUP BY a.apartment_number, a.building_id, at.beds;

-- ----------------------------
-- View structure for apartments_with_employee
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_with_employee" AS
 SELECT a.apartment_number,
    a.building_id
   FROM ((apartment a
     JOIN lives_in li ON (((a.building_id = li.building_id) AND (a.apartment_number = li.apartment_number))))
     JOIN employee e ON ((li.person_id = e.person_id)));

-- ----------------------------
-- View structure for apartments_with_female_persons
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_with_female_persons" AS
 SELECT a.apartment_number,
    a.building_id
   FROM ((apartment a
     JOIN lives_in li ON (((a.building_id = li.building_id) AND (a.apartment_number = li.apartment_number))))
     JOIN person p ON ((li.person_id = p.person_id)))
  WHERE (p.gender = 'F'::bpchar);

-- ----------------------------
-- View structure for apartments_with_free_beds
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_with_free_beds" AS
 SELECT apartment_occupation.beds_occupied,
    apartment_occupation.apartment_number,
    apartment_occupation.building_id,
    apartment_occupation.beds,
    apartment_occupation.free_beds
   FROM apartment_occupation
  WHERE (apartment_occupation.free_beds > 0);

-- ----------------------------
-- View structure for apartments_with_male_persons
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_with_male_persons" AS
 SELECT a.apartment_number,
    a.building_id
   FROM ((apartment a
     JOIN lives_in li ON (((a.building_id = li.building_id) AND (a.apartment_number = li.apartment_number))))
     JOIN person p ON ((li.person_id = p.person_id)))
  WHERE (p.gender = 'M'::bpchar);

-- ----------------------------
-- View structure for apartments_with_students
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_with_students" AS
 SELECT a.apartment_number,
    a.building_id
   FROM ((apartment a
     JOIN lives_in li ON (((a.building_id = li.building_id) AND (a.apartment_number = li.apartment_number))))
     JOIN student s ON ((li.person_id = s.person_id)));

-- ----------------------------
-- View structure for apartments_for_female_employee
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_for_female_employee" AS
 SELECT awfb.beds_occupied,
    awfb.apartment_number,
    awfb.building_id,
    awfb.beds,
    awfb.free_beds
   FROM apartments_with_free_beds awfb
  WHERE ((NOT (EXISTS ( SELECT 1
           FROM apartments_with_male_persons awmp
          WHERE ((awfb.apartment_number = awmp.apartment_number) AND (awfb.building_id = awmp.building_id))))) AND (NOT (EXISTS ( SELECT 1
           FROM apartments_with_students aws
          WHERE ((awfb.apartment_number = aws.apartment_number) AND (awfb.building_id = aws.building_id))))));

-- ----------------------------
-- View structure for apartments_for_female_students
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_for_female_students" AS
 SELECT awfb.beds_occupied,
    awfb.apartment_number,
    awfb.building_id,
    awfb.beds,
    awfb.free_beds
   FROM apartments_with_free_beds awfb
  WHERE ((NOT (EXISTS ( SELECT 1
           FROM apartments_with_male_persons awmp
          WHERE ((awfb.apartment_number = awmp.apartment_number) AND (awfb.building_id = awmp.building_id))))) AND (NOT (EXISTS ( SELECT 1
           FROM apartments_with_employee awe
          WHERE ((awfb.apartment_number = awe.apartment_number) AND (awfb.building_id = awe.building_id))))));

-- ----------------------------
-- View structure for apartments_for_male_employee
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_for_male_employee" AS
 SELECT awfb.beds_occupied,
    awfb.apartment_number,
    awfb.building_id,
    awfb.beds,
    awfb.free_beds
   FROM apartments_with_free_beds awfb
  WHERE ((NOT (EXISTS ( SELECT 1
           FROM apartments_with_female_persons awfp
          WHERE ((awfb.apartment_number = awfp.apartment_number) AND (awfb.building_id = awfp.building_id))))) AND (NOT (EXISTS ( SELECT 1
           FROM apartments_with_students aws
          WHERE ((awfb.apartment_number = aws.apartment_number) AND (awfb.building_id = aws.building_id))))));

-- ----------------------------
-- View structure for apartments_for_male_students
-- ----------------------------
CREATE OR REPLACE VIEW "public"."apartments_for_male_students" AS
 SELECT awfb.beds_occupied,
    awfb.apartment_number,
    awfb.building_id,
    awfb.beds,
    awfb.free_beds
   FROM apartments_with_free_beds awfb
  WHERE ((NOT (EXISTS ( SELECT 1
           FROM apartments_with_female_persons awfp
          WHERE ((awfb.apartment_number = awfp.apartment_number) AND (awfb.building_id = awfp.building_id))))) AND (NOT (EXISTS ( SELECT 1
           FROM apartments_with_employee awe
          WHERE ((awfb.apartment_number = awe.apartment_number) AND (awfb.building_id = awe.building_id))))));


-- ----------------------------
-- View structure for employees_without_apartments
-- ----------------------------
CREATE OR REPLACE VIEW "public"."employees_without_apartments" AS
 SELECT p.person_id,
    p.first_name,
    p.middle_name,
    p.family_name,
    p.date_of_birth,
    p.gender
   FROM ((person p
     JOIN employee e ON ((p.person_id = e.person_id)))
     LEFT JOIN lives_in li ON ((p.person_id = li.person_id)))
  WHERE (li.apartment_number IS NULL);

-- ----------------------------
-- View structure for guest_control
-- ----------------------------
CREATE OR REPLACE VIEW "public"."guest_control" AS
 SELECT guest.person_id AS guest_id,
    person.first_name,
    person.family_name,
    (g.date_time_end - g.date_time_start) AS stay_time
   FROM ((guest
     JOIN person ON ((guest.person_id = person.person_id)))
     JOIN guest_to_person g ON ((guest.person_id = g.guest_person_id)))
  WHERE ((g.date_time_end - g.date_time_start) > '24:00:00'::interval);

-- ----------------------------
-- View structure for guest_control_with_host
-- ----------------------------
CREATE OR REPLACE VIEW "public"."guest_control_with_host" AS
 SELECT guest.person_id AS guest_person_id,
    p1.first_name AS guest_name,
    p1.family_name AS guest_family_name,
    (g.date_time_end - g.date_time_start) AS stay_time,
    p2.person_id AS host_person_id,
    p2.first_name AS host_first_name,
    p2.family_name AS host_family_name
   FROM (((guest
     JOIN person p1 ON ((guest.person_id = p1.person_id)))
     JOIN guest_to_person g ON ((guest.person_id = g.guest_person_id)))
     JOIN person p2 ON ((g.person_id = p2.person_id)))
  WHERE ((g.date_time_end - g.date_time_start) > '24:00:00'::interval);

-- ----------------------------
-- View structure for have_entry_permissions
-- ----------------------------
CREATE OR REPLACE VIEW "public"."have_entry_permissions" AS
 SELECT in_out.ecm_id,
    in_out.person_id,
    in_out.direction AS in_out,
    in_out.date_time,
    in_out.accepted,
    entry_check_machine.building_id,
    entry_check_machine.entry_permission_id
   FROM (in_out
     JOIN entry_check_machine USING (ecm_id))
  WHERE (entry_check_machine.entry_permission_id IN ( SELECT ep.entry_permission_id
           FROM ((((person
             JOIN person_has_ep_set USING (person_id))
             JOIN entry_permission_set USING (ep_set_id))
             JOIN ep_set_has_ep USING (ep_set_id))
             JOIN entry_permission ep USING (entry_permission_id))
          WHERE (in_out.person_id = person.person_id)));

-- ----------------------------
-- View structure for last_time_person_accepted_in_out
-- ----------------------------
CREATE OR REPLACE VIEW "public"."last_time_person_accepted_in_out" AS
 SELECT in_out.person_id,
    max(in_out.date_time) AS last_accepted_entry
   FROM in_out
  WHERE (in_out.accepted = true)
  GROUP BY in_out.person_id;

-- ----------------------------
-- View structure for no_entry_permission_for_in_out
-- ----------------------------
CREATE OR REPLACE VIEW "public"."no_entry_permission_for_in_out" AS
 SELECT in_out.ecm_id,
    in_out.person_id,
    in_out.direction AS in_out,
    in_out.date_time,
    in_out.accepted,
    entry_check_machine.building_id,
    entry_check_machine.entry_permission_id
   FROM (in_out
     JOIN entry_check_machine USING (ecm_id))
  WHERE (NOT (entry_check_machine.entry_permission_id IN ( SELECT ep.entry_permission_id
           FROM ((((person
             JOIN person_has_ep_set USING (person_id))
             JOIN entry_permission_set USING (ep_set_id))
             JOIN ep_set_has_ep USING (ep_set_id))
             JOIN entry_permission ep USING (entry_permission_id))
          WHERE (in_out.person_id = person.person_id))));

-- ----------------------------
-- View structure for outdated_documents
-- ----------------------------
CREATE OR REPLACE VIEW "public"."outdated_documents" AS
 SELECT document.person_id,
    document.document_id,
    document.document_type_id,
    document_type.type_name,
    document_type.identity_lvl,
    (now() - (document.update_to_date)::timestamp with time zone) AS overdue_for,
    person.first_name,
    person.family_name
   FROM ((document
     JOIN document_type USING (document_type_id))
     JOIN person USING (person_id))
  WHERE (document.update_to_date < now());

-- ----------------------------
-- View structure for outdated_documents_of_students_and_employee
-- ----------------------------
CREATE OR REPLACE VIEW "public"."outdated_documents_of_students_and_employee" AS
 SELECT document.person_id,
    document.document_id,
    document.document_type_id,
    document_type.type_name,
    document_type.identity_lvl,
    (now() - (document.update_to_date)::timestamp with time zone) AS overdue_for,
    person.first_name,
    person.family_name
   FROM ((document
     JOIN document_type USING (document_type_id))
     JOIN person USING (person_id))
  WHERE ((document.update_to_date < now()) AND (document.person_id IN ( SELECT student.person_id
           FROM student
        UNION
         SELECT employee.person_id
           FROM employee)));

-- ----------------------------
-- View structure for payment_control_rental_fee
-- ----------------------------
CREATE OR REPLACE VIEW "public"."payment_control_rental_fee" AS
 SELECT account.person_id,
    sum(transaction.amount) AS rental_fee_balance
   FROM (((account
     JOIN person USING (person_id))
     JOIN transaction USING (account_id))
     JOIN transaction_type USING (transaction_type_id))
  WHERE ((transaction_type.type_name)::text = 'Rental Fee'::text)
  GROUP BY account.person_id
 HAVING (sum(transaction.amount) < (0)::numeric);

-- ----------------------------
-- View structure for payment_control_tuition_fee
-- ----------------------------
CREATE OR REPLACE VIEW "public"."payment_control_tuition_fee" AS
 SELECT account.person_id,
    sum(transaction.amount) AS tuition_fee_balance
   FROM (((account
     JOIN person USING (person_id))
     JOIN transaction USING (account_id))
     JOIN transaction_type USING (transaction_type_id))
  WHERE ((transaction_type.type_name)::text = 'Tuition Fee'::text)
  GROUP BY account.person_id
 HAVING (sum(transaction.amount) < (0)::numeric);

-- ----------------------------
-- View structure for personnel_attendance_control
-- ----------------------------
CREATE OR REPLACE VIEW "public"."personnel_attendance_control" AS
 SELECT person.person_id,
    person.first_name,
    person.family_name,
    (now() - (t.last_accepted_entry)::timestamp with time zone) AS no_action_for
   FROM (( SELECT in_out.person_id,
            max(in_out.date_time) AS last_accepted_entry
           FROM in_out
          WHERE (((now() - (in_out.date_time)::timestamp with time zone) > '168:00:00'::interval) AND (in_out.accepted = true))
          GROUP BY in_out.person_id
          ORDER BY (max(in_out.date_time))) t
     JOIN person ON ((t.person_id = person.person_id)));

-- ----------------------------
-- View structure for persons_inside_campus_now
-- ----------------------------
CREATE OR REPLACE VIEW "public"."persons_inside_campus_now" AS
 SELECT in_out.person_id,
    in_out.ecm_id,
    in_out.direction,
    in_out.date_time,
    in_out.accepted,
    entry_check_machine.building_id,
    entry_check_machine.entry_permission_id,
    entry_check_machine.constraint_group_id,
    person.first_name,
    person.middle_name,
    person.family_name,
    person.date_of_birth,
    person.gender,
    person.main_document_id
   FROM ((in_out
     JOIN entry_check_machine USING (ecm_id))
     JOIN person USING (person_id))
  WHERE ((in_out.person_id IN ( SELECT last_time_person_accepted_in_out.person_id
           FROM last_time_person_accepted_in_out)) AND (in_out.date_time = ( SELECT last_time_person_accepted_in_out.last_accepted_entry
           FROM last_time_person_accepted_in_out
          WHERE (last_time_person_accepted_in_out.person_id = in_out.person_id))) AND ((entry_check_machine.constraint_group_id <> 1) OR (in_out.direction <> 'o'::bpchar)));

-- ----------------------------
-- View structure for persons_with_first_accepted_campus_entry_equals_out
-- ----------------------------
CREATE OR REPLACE VIEW "public"."persons_with_first_accepted_campus_entry_equals_out" AS
 SELECT in_out.person_id,
    in_out.date_time,
    in_out.ecm_id,
    in_out.direction,
    in_out.accepted
   FROM (in_out
     JOIN entry_check_machine USING (ecm_id))
  WHERE ((in_out.accepted = true) AND (entry_check_machine.constraint_group_id = 1) AND (in_out.direction = 'o'::bpchar) AND (in_out.date_time <= ALL ( SELECT io.date_time
           FROM (in_out io
             JOIN entry_check_machine ecm USING (ecm_id))
          WHERE ((io.accepted = true) AND (ecm.constraint_group_id = 1) AND (io.person_id = in_out.person_id)))))
  GROUP BY in_out.person_id, in_out.date_time, in_out.ecm_id, in_out.direction, in_out.accepted;

-- ----------------------------
-- View structure for persons_with_last_accepted_campus_entry_equals_in
-- ----------------------------
CREATE OR REPLACE VIEW "public"."persons_with_last_accepted_campus_entry_equals_in" AS
 SELECT in_out.person_id,
    in_out.date_time,
    in_out.ecm_id,
    in_out.direction,
    in_out.accepted,
    now() AS now
   FROM (in_out
     JOIN entry_check_machine USING (ecm_id))
  WHERE ((in_out.accepted = true) AND (entry_check_machine.constraint_group_id = 1) AND (in_out.direction = 'i'::bpchar) AND (in_out.date_time >= ALL ( SELECT io.date_time
           FROM (in_out io
             JOIN entry_check_machine ecm USING (ecm_id))
          WHERE ((io.accepted = true) AND (ecm.constraint_group_id = 1) AND (io.person_id = in_out.person_id)))))
  GROUP BY in_out.person_id, in_out.date_time, in_out.ecm_id, in_out.direction, in_out.accepted;

-- ----------------------------
-- View structure for rental_fee_balance
-- ----------------------------
CREATE OR REPLACE VIEW "public"."rental_fee_balance" AS
 SELECT account.person_id,
    person.first_name,
    person.family_name,
    sum(transaction.amount) AS rental_fee_balance
   FROM (((account
     JOIN person USING (person_id))
     JOIN transaction USING (account_id))
     JOIN transaction_type USING (transaction_type_id))
  WHERE ((transaction_type.type_name)::text = 'Rental Fee'::text)
  GROUP BY account.person_id, person.first_name, person.family_name;

-- ----------------------------
-- View structure for rental_fee_balance_negative
-- ----------------------------
CREATE OR REPLACE VIEW "public"."rental_fee_balance_negative" AS
 SELECT account.person_id,
    person.first_name,
    person.family_name,
    sum(transaction.amount) AS rental_fee_balance
   FROM (((account
     JOIN person USING (person_id))
     JOIN transaction USING (account_id))
     JOIN transaction_type USING (transaction_type_id))
  WHERE ((transaction_type.type_name)::text = 'Rental Fee'::text)
  GROUP BY account.person_id, person.first_name, person.family_name
 HAVING (sum(transaction.amount) < (0)::numeric);

-- ----------------------------
-- View structure for students_without_apartment
-- ----------------------------
CREATE OR REPLACE VIEW "public"."students_without_apartment" AS
 SELECT p.person_id,
    p.first_name,
    p.middle_name,
    p.family_name,
    p.date_of_birth,
    p.gender
   FROM ((person p
     JOIN student s ON ((p.person_id = s.person_id)))
     LEFT JOIN lives_in li ON ((p.person_id = li.person_id)))
  WHERE (li.apartment_number IS NULL);

-- ----------------------------
-- View structure for tuition_fee_balance
-- ----------------------------
CREATE OR REPLACE VIEW "public"."tuition_fee_balance" AS
 SELECT account.person_id,
    person.first_name,
    person.family_name,
    sum(transaction.amount) AS tuition_fee_balance
   FROM (((account
     JOIN person USING (person_id))
     JOIN transaction USING (account_id))
     JOIN transaction_type USING (transaction_type_id))
  WHERE ((transaction_type.type_name)::text = 'Tuition Fee'::text)
  GROUP BY account.person_id, person.first_name, person.family_name;

-- ----------------------------
-- View structure for tuition_fee_balance_negative
-- ----------------------------
CREATE OR REPLACE VIEW "public"."tuition_fee_balance_negative" AS
 SELECT account.person_id,
    person.first_name,
    person.family_name,
    sum(transaction.amount) AS tuition_fee_balance
   FROM (((account
     JOIN person USING (person_id))
     JOIN transaction USING (account_id))
     JOIN transaction_type USING (transaction_type_id))
  WHERE ((transaction_type.type_name)::text = 'Tuition Fee'::text)
  GROUP BY account.person_id, person.first_name, person.family_name
 HAVING (sum(transaction.amount) < (0)::numeric);

-- ----------------------------
-- Alter Sequences Owned By
-- ----------------------------
ALTER SEQUENCE "public"."account_account_id_seq" OWNED BY "account"."account_id";
ALTER SEQUENCE "public"."apartment_type_apartment_type_id_seq" OWNED BY "apartment_type"."apartment_type_id";
ALTER SEQUENCE "public"."building_building_id_seq" OWNED BY "building"."building_id";
ALTER SEQUENCE "public"."document_document_id_seq" OWNED BY "document"."document_id";
ALTER SEQUENCE "public"."document_type_document_type_id_seq" OWNED BY "document_type"."document_type_id";
ALTER SEQUENCE "public"."employee_role_employee_role_id_seq" OWNED BY "employee_role"."employee_role_id";
ALTER SEQUENCE "public"."entry_check_machine_ecm_id_seq" OWNED BY "entry_check_machine"."ecm_id";
ALTER SEQUENCE "public"."entry_permission_entry_permission_id_seq" OWNED BY "entry_permission"."entry_permission_id";
ALTER SEQUENCE "public"."entry_permission_set_ep_set_id_seq" OWNED BY "entry_permission_set"."ep_set_id";
ALTER SEQUENCE "public"."person_person_id_seq" OWNED BY "person"."person_id";
ALTER SEQUENCE "public"."transaction_transaction_id_seq" OWNED BY "transaction"."transaction_id";
ALTER SEQUENCE "public"."transaction_type_transaction_type_id_seq" OWNED BY "transaction_type"."transaction_type_id";

-- ----------------------------
-- Uniques structure for table account
-- ----------------------------
ALTER TABLE "public"."account" ADD UNIQUE ("person_id") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table account
-- ----------------------------
ALTER TABLE "public"."account" ADD PRIMARY KEY ("account_id");

-- ----------------------------
-- Primary Key structure for table apartment
-- ----------------------------
ALTER TABLE "public"."apartment" ADD PRIMARY KEY ("building_id", "apartment_number");

-- ----------------------------
-- Uniques structure for table apartment_type
-- ----------------------------
ALTER TABLE "public"."apartment_type" ADD UNIQUE ("type_name") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table apartment_type
-- ----------------------------
ALTER TABLE "public"."apartment_type" ADD PRIMARY KEY ("apartment_type_id");

-- ----------------------------
-- Uniques structure for table building
-- ----------------------------
ALTER TABLE "public"."building" ADD UNIQUE ("city", "street", "number_in_street");

-- ----------------------------
-- Primary Key structure for table building
-- ----------------------------
ALTER TABLE "public"."building" ADD PRIMARY KEY ("building_id");

-- ----------------------------
-- Primary Key structure for table document
-- ----------------------------
ALTER TABLE "public"."document" ADD PRIMARY KEY ("document_id");

-- ----------------------------
-- Uniques structure for table document_type
-- ----------------------------
ALTER TABLE "public"."document_type" ADD UNIQUE ("type_name") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table document_type
-- ----------------------------
ALTER TABLE "public"."document_type" ADD PRIMARY KEY ("document_type_id");

-- ----------------------------
-- Primary Key structure for table employee
-- ----------------------------
ALTER TABLE "public"."employee" ADD PRIMARY KEY ("person_id");

-- ----------------------------
-- Uniques structure for table employee_role
-- ----------------------------
ALTER TABLE "public"."employee_role" ADD UNIQUE ("role_name") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table employee_role
-- ----------------------------
ALTER TABLE "public"."employee_role" ADD PRIMARY KEY ("employee_role_id");

-- ----------------------------
-- Primary Key structure for table entry_check_machine
-- ----------------------------
ALTER TABLE "public"."entry_check_machine" ADD PRIMARY KEY ("ecm_id");

-- ----------------------------
-- Uniques structure for table entry_permission
-- ----------------------------
ALTER TABLE "public"."entry_permission" ADD UNIQUE ("permission_name") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table entry_permission
-- ----------------------------
ALTER TABLE "public"."entry_permission" ADD PRIMARY KEY ("entry_permission_id");

-- ----------------------------
-- Uniques structure for table entry_permission_set
-- ----------------------------
ALTER TABLE "public"."entry_permission_set" ADD UNIQUE ("set_name") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table entry_permission_set
-- ----------------------------
ALTER TABLE "public"."entry_permission_set" ADD PRIMARY KEY ("ep_set_id");

-- ----------------------------
-- Primary Key structure for table ep_set_has_ep
-- ----------------------------
ALTER TABLE "public"."ep_set_has_ep" ADD PRIMARY KEY ("entry_permission_id", "ep_set_id");

-- ----------------------------
-- Primary Key structure for table guest
-- ----------------------------
ALTER TABLE "public"."guest" ADD PRIMARY KEY ("person_id");

-- ----------------------------
-- Primary Key structure for table guest_to_person
-- ----------------------------
ALTER TABLE "public"."guest_to_person" ADD PRIMARY KEY ("person_id", "date_time_start", "guest_person_id");

-- ----------------------------
-- Primary Key structure for table in_out
-- ----------------------------
ALTER TABLE "public"."in_out" ADD PRIMARY KEY ("date_time", "person_id", "ecm_id");

-- ----------------------------
-- Primary Key structure for table lives_in
-- ----------------------------
ALTER TABLE "public"."lives_in" ADD PRIMARY KEY ("person_id");

-- ----------------------------
-- Uniques structure for table person
-- ----------------------------
ALTER TABLE "public"."person" ADD UNIQUE ("main_document_id") DEFERRABLE;
ALTER TABLE "public"."person" ADD UNIQUE ("first_name", "family_name", "date_of_birth");

-- ----------------------------
-- Primary Key structure for table person
-- ----------------------------
ALTER TABLE "public"."person" ADD PRIMARY KEY ("person_id");

-- ----------------------------
-- Primary Key structure for table person_has_ep_set
-- ----------------------------
ALTER TABLE "public"."person_has_ep_set" ADD PRIMARY KEY ("person_id", "ep_set_id");

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD PRIMARY KEY ("person_id");

-- ----------------------------
-- Primary Key structure for table transaction
-- ----------------------------
ALTER TABLE "public"."transaction" ADD PRIMARY KEY ("transaction_id");

-- ----------------------------
-- Uniques structure for table transaction_type
-- ----------------------------
ALTER TABLE "public"."transaction_type" ADD UNIQUE ("type_name") DEFERRABLE;

-- ----------------------------
-- Primary Key structure for table transaction_type
-- ----------------------------
ALTER TABLE "public"."transaction_type" ADD PRIMARY KEY ("transaction_type_id");

-- ----------------------------
-- Foreign Key structure for table "public"."account"
-- ----------------------------
ALTER TABLE "public"."account" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."apartment"
-- ----------------------------
ALTER TABLE "public"."apartment" ADD FOREIGN KEY ("apartment_type_id") REFERENCES "public"."apartment_type" ("apartment_type_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."apartment" ADD FOREIGN KEY ("building_id") REFERENCES "public"."building" ("building_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."document"
-- ----------------------------
ALTER TABLE "public"."document" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."document" ADD FOREIGN KEY ("document_type_id") REFERENCES "public"."document_type" ("document_type_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."employee"
-- ----------------------------
ALTER TABLE "public"."employee" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."employee" ADD FOREIGN KEY ("employee_role_id") REFERENCES "public"."employee_role" ("employee_role_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."entry_check_machine"
-- ----------------------------
ALTER TABLE "public"."entry_check_machine" ADD FOREIGN KEY ("entry_permission_id") REFERENCES "public"."entry_permission" ("entry_permission_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."entry_check_machine" ADD FOREIGN KEY ("building_id") REFERENCES "public"."building" ("building_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."ep_set_has_ep"
-- ----------------------------
ALTER TABLE "public"."ep_set_has_ep" ADD FOREIGN KEY ("ep_set_id") REFERENCES "public"."entry_permission_set" ("ep_set_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."ep_set_has_ep" ADD FOREIGN KEY ("entry_permission_id") REFERENCES "public"."entry_permission" ("entry_permission_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."guest"
-- ----------------------------
ALTER TABLE "public"."guest" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."guest_to_person"
-- ----------------------------
ALTER TABLE "public"."guest_to_person" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."guest_to_person" ADD FOREIGN KEY ("guest_person_id") REFERENCES "public"."guest" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."in_out"
-- ----------------------------
ALTER TABLE "public"."in_out" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."in_out" ADD FOREIGN KEY ("ecm_id") REFERENCES "public"."entry_check_machine" ("ecm_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."lives_in"
-- ----------------------------
ALTER TABLE "public"."lives_in" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."lives_in" ADD FOREIGN KEY ("building_id", "apartment_number") REFERENCES "public"."apartment" ("building_id", "apartment_number") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."person"
-- ----------------------------
ALTER TABLE "public"."person" ADD FOREIGN KEY ("main_document_id") REFERENCES "public"."document" ("document_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."person_has_ep_set"
-- ----------------------------
ALTER TABLE "public"."person_has_ep_set" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE CASCADE ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."person_has_ep_set" ADD FOREIGN KEY ("ep_set_id") REFERENCES "public"."entry_permission_set" ("ep_set_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."student"
-- ----------------------------
ALTER TABLE "public"."student" ADD FOREIGN KEY ("person_id") REFERENCES "public"."person" ("person_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;

-- ----------------------------
-- Foreign Key structure for table "public"."transaction"
-- ----------------------------
ALTER TABLE "public"."transaction" ADD FOREIGN KEY ("transaction_type_id") REFERENCES "public"."transaction_type" ("transaction_type_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
ALTER TABLE "public"."transaction" ADD FOREIGN KEY ("account_id") REFERENCES "public"."account" ("account_id") ON DELETE RESTRICT ON UPDATE CASCADE DEFERRABLE;
