SELECT d.family_name, d.specialty, p.family_name, a.start
FROM appointments a
  INNER JOIN doctors d
  ON d.id = a.doctor_id
  INNER JOIN patients p
  ON p.id = a.patient_id
;
