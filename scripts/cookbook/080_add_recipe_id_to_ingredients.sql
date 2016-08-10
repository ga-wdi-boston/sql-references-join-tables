ALTER TABLE ingredients
  ADD COLUMN recipe_id INTEGER REFERENCES recipes(id);
CREATE INDEX ON ingredients(recipe_id);
