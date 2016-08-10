SELECT COUNT(*), d.specialty
FROM patients p
INNER JOIN doctors d
  ON p.doctor_id = d.id
WHERE d.specialty <> 'General practice'
GROUP BY d.specialty
ORDER BY COUNT(*) ASC;
