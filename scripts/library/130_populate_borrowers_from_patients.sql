INSERT INTO borrowers(first_name, last_name)
  SELECT given_name, family_name
  FROM patients;
