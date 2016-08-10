UPDATE ingredients
SET recipe_id = (SELECT id FROM recipes WHERE name = 'Black Beans and Rice')
WHERE name IN ('black beans canned', 'rice');
UPDATE ingredients
SET recipe_id = (SELECT id FROM recipes WHERE name = 'Spaghetti w/Red Sauce')
WHERE name IN ('whole wheat spaghetti',
  'tomatoes canned',
  'extra-virgin olive oil',
  'rosemary',
  'black peppercorns');
