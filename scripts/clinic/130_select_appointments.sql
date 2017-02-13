SELECT d.family_name AS doctor,
       p.family_name, p.given_name,
       a.start_at, a.length
FROM appointments AS a
  INNER JOIN doctors AS d
    ON d.id = a.doctor_id
  INNER JOIN patients AS p
    ON p.id = a.patient_id
WHERE a.start_at < '2017-03-01'
;
