INSERT INTO loans(start_on, end_on, book_id, borrower_id)
  SELECT DATE '2017-02-13', DATE '2017-02-21', bk.id, br.id
  FROM borrowers AS br, books AS bk
  WHERE br.given_name = 'Caitlin'
    AND br.family_name = 'Garrison'
    AND bk.title = '1984'
  UNION
  SELECT '2017-02-11', '2017-02-18', bk.id, br.id
  FROM borrowers AS br
    INNER JOIN books AS bk
      ON br.family_name = 'Ayala'
        AND br.given_name = 'Rhea'
        AND bk.title = 'And Then There Were None'
;
