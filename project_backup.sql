-- -----------------------------------------------------
-- backups
-- -----------------------------------------------------
DROP TABLE IF EXISTS person_backup ;
CREATE TABLE person_backup LIKE person;
INSERT INTO person_backup
SELECT * FROM person;

DROP TABLE IF EXISTS doctor_backup ;
CREATE TABLE doctor_backup LIKE doctor;
INSERT INTO doctor_backup
SELECT * FROM doctor;

DROP TABLE IF EXISTS patient_backup ;
CREATE TABLE patient_backup LIKE patient;
INSERT INTO patient_backup
SELECT * FROM patient;

DROP TABLE IF EXISTS appointment_test_backup ;
CREATE TABLE appointment_test_backup LIKE appointment_test;
INSERT INTO appointment_test_backup
SELECT * FROM appointment_test;

DROP TABLE IF EXISTS doctor_specialty_backup ;
CREATE TABLE doctor_specialty_backup LIKE doctor_specialty;
INSERT INTO doctor_specialty_backup
SELECT * FROM doctor_specialty;

DROP TABLE IF EXISTS prescription_backup ;
CREATE TABLE prescription_backup LIKE prescription;
INSERT INTO prescription_backup
SELECT * FROM prescription;

DROP TABLE IF EXISTS specialty_backup ;
CREATE TABLE specialty_backup LIKE specialty;
INSERT INTO specialty_backup
SELECT * FROM specialty;

DROP TABLE IF EXISTS specialty_audit_backup ;
CREATE TABLE specialty_audit_backup LIKE specialty_audit;
INSERT INTO specialty_audit_backup
SELECT * FROM specialty_audit;

DROP TABLE IF EXISTS test_backup ;
CREATE TABLE test_backup LIKE test;
INSERT INTO test_backup
SELECT * FROM test;

DROP TABLE IF EXISTS visit_backup ;
CREATE TABLE visit_backup LIKE visit;
INSERT INTO visit_backup
SELECT * FROM visit;

DROP TABLE IF EXISTS visit_prescription_backup ;
CREATE TABLE visit_prescription_backup LIKE visit_prescription;
INSERT INTO visit_prescription_backup
SELECT * FROM visit_prescription;

