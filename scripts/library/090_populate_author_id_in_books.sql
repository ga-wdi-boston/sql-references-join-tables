UPDATE books
SET author_id = authors.id
FROM authors
WHERE books.author = authors.name
;
