ALTER TABLE books
  ADD COLUMN author_id INTEGER REFERENCES authors(id);
CREATE INDEX ON books(author_id);
