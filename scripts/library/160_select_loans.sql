SELECT bk.title, br.last_name, l.start, l.fin
FROM books bk
INNER JOIN loans l
  ON bk.id = l.book_id
INNER JOIN borrowers br
  ON l.borrower_id = br.id
WHERE l.start > '2016-07-01';
