INSERT INTO appointments(start, length, doctor_id, patient_id)
  SELECT TIMESTAMP '2016-09-22 11:30', 20, d.id, p.id
  FROM doctors d, patients p
    WHERE d.specialty = 'Allergy and immunology'
    AND d.given_name = 'Randal'
    AND d.surname = 'Sloan'
    AND p.given_name = 'Rhea'
    AND p.surname = 'Cannon'
    AND p.born_on = '1940-05-23'
  UNION
  SELECT TIMESTAMP '2016-10-10 08:30', 30, d.id, p.id
  FROM doctors d
    INNER JOIN patients p
    ON d.specialty = 'Dermatology'
    AND d.given_name = 'Helga'
    AND d.surname = 'Akers'
    AND p.given_name = 'Alba'
    AND p.surname = 'Whitfield'
    AND p.born_on = '1969-03-06';
