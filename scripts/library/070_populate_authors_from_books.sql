INSERT INTO authors(name)
SELECT DISTINCT author
FROM books
ORDER BY author;
