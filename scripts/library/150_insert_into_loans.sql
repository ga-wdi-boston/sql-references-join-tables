INSERT INTO loans(start, fin, borrower_id, book_id)
  SELECT DATE '2016-07-31', DATE '2016-08-31', br.id, bk.id
  FROM borrowers br, books bk
  WHERE br.first_name = 'Caitlin'
    AND br.last_name = 'Sinclair'
    AND bk.title = '1984'
  UNION
  SELECT DATE '2016-08-07', DATE '2016-09-06', br.id, bk.id
  FROM borrowers br, books bk
  WHERE br.first_name = 'Rhea'
    AND br.last_name = 'Cannon'
    AND bk.title = 'Animal Farm'
;
