CREATE TABLE loans (
  id SERIAL PRIMARY KEY,
  start_on DATE,
  end_on DATE,
  book_id INTEGER REFERENCES books(id),
  borrower_id INTEGER REFERENCES borrowers(id)
);
CREATE INDEX ON loans(book_id);
CREATE INDEX ON loans(borrower_id);
