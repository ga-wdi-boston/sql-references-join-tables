INSERT INTO appointments(start_at, length, patient_id, doctor_id)
  SELECT TIMESTAMP '2017-02-14 10:00', 30, p.id, d.id
  FROM patients AS p, doctors AS d
  WHERE p.family_name = 'Reese'
    AND p.given_name = 'Kisha'
    AND d.family_name = 'Sloan'
    AND d.given_name = 'Randal'
    AND d.specialty = 'Allergy and immunology'
  UNION
  SELECT '2017-05-14 16:00', 20, p.id, d.id
  FROM patients AS p
    INNER JOIN doctors as d
      ON p.family_name = 'Scott'
        AND p.given_name = 'Rosie'
        AND d.family_name = 'Rasmussen'
        AND d.given_name = 'Meagan'
        AND d.specialty = 'Orthopedics'
;
