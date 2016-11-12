INSERT INTO recipe_ingredients(quantity, recipe_id, ingredient_id)
  SELECT 1, r.id, i.id
  FROM recipes r
  INNER JOIN ingredients i
    ON i.recipe_id = r.id;
