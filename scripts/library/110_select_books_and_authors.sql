SELECT a.name, COUNT(*)
FROM authors a
INNER JOIN books b
  ON b.author_id = a.id
GROUP BY a.name
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;

SELECT b.title, a.name
FROM books b
INNER JOIN authors a
  ON b.author_id = a.id
WHERE a.name IN ('Ernest Hemingway', 'Shirley Jackson')
ORDER BY a.name DESC;
