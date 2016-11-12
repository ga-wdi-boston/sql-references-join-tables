CREATE TABLE loans(
  id SERIAL PRIMARY KEY,
  start DATE,
  fin DATE,
  borrower_id INTEGER REFERENCES borrowers(id),
  book_id INTEGER REFERENCES books(id)
);
CREATE INDEX ON loans(borrower_id);
CREATE INDEX ON loans(book_id);
