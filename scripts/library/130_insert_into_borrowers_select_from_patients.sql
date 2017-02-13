INSERT INTO borrowers(family_name, given_name)
  SELECT family_name, given_name
  FROM patients;
