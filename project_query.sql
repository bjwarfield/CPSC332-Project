CREATE VIEW DOCTOR_WHO_GAVE_PANADOL AS
SELECT first_name, last_name
FROM person
WHERE person_id IN (SELECT fk_person_id
					FROM doctor
                    WHERE doctor_id IN (SELECT fk_doctor_id
										FROM visit, visit_prescription, prescription p
                                        WHERE p.name = 'Panadol' AND prescription_id = fk_prescription_id AND visit_id = fk_visit_id));
                                        
SELECT DISTINCT first_name, last_name
FROM person, doctor, visit, visit_prescription, prescription p	
WHERE p.name = 'Panadol' AND prescription_id = fk_prescription_id AND visit_id = fk_visit_id AND doctor_id = fk_doctor_id AND person_id = fk_person_id;

CREATE VIEW ROB_BELKIN_PATIENT AS
SELECT first_name, last_name, phone
FROM person
WHERE person_id IN (SELECT fk_person_id
					FROM patient
                    WHERE patient_id IN (SELECT fk_patient_id 
										FROM visit
										WHERE fk_doctor_id IN (SELECT doctor_id
																FROM doctor, person
                                                                WHERE fk_person_id = person_id AND first_name = 'Rob' AND last_name = 'Belkin')));

SELECT first_name, last_name, phone
FROM person, patient, visit
WHERE person_id = fk_person_id AND patient_id = fk_patient_id AND fk_doctor_id IN (SELECT doctor_id 
																					FROM doctor, person
																					WHERE fk_person_id = person_id AND first_name = 'Rob' AND last_name = 'Belkin');


CREATE VIEW DOCTOR_SPECIALTY AS
SELECT first_name, last_name, specialty.name
FROM person, specialty, doctor, doctor_specialty
WHERE fk_person_id = person_id AND fk_doctor_id = doctor_id AND fk_spec_id = spec_id; 

SELECT first_name, last_name, specialty.name
FROM person, doctor 
LEFT JOIN (SELECT fk_doctor_id, specialty.name
FROM doctor_specialty, specialty
WHERE fk_spec_id = spec_id;) as d
ON doctor_id = d.fk_doctor_id
WHERE person_id = fk_person_id; 


