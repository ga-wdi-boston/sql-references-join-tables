SELECT r.name, i.name
FROM recipes r
INNER JOIN ingredients i
  ON i.recipe_id = r.id;
