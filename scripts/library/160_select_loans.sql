SELECT bk.title, br.given_name, br.family_name, l.start_on, l.end_on
FROM loans AS l
  INNER JOIN books AS bk
    ON bk.id = l.book_id
  INNER JOIN borrowers AS br
    ON br.id = l.borrower_id
WHERE l.start_on >= '2017-02-13'
;
