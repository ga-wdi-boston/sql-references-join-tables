[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# An Introduction to many-to-many relationships in PostgreSQL

## Prerequisites

-   [An Introduction to PostgreSQL Foreign Key References](https://github.com/ga-wdi-boston/sql-references-join)

## Objectives

By the end of this, developers should be able to:

-   Create tables with foreign key references.
-   Create join tables to represent many-to-many relationships.
-   Insert rows in join tables to create many-to-many relationships.
-   Select data about many-to-many relationships using join tables.

## Preparation

1.  [Fork and clone](https://github.com/ga-wdi-boston/meta/wiki/ForkAndClone)
    this repository.
1.  Create a new branch, `training`, for your work.
1.  Install dependencies if necessary.

## Modeling relationships

Our library has books and authors, but it won't be much of a library without
borrowers.  Our clinic has patients and doctors, but how do we schedule
appointments? Our cookbook has ingredients and recipes, but only allows a
particular ingredient in a single recipe.

-   In our library, how do we connect `borrowers` to `books`.
-   How should clinic administrators record appointments?
-   What does our cookbook need to include ingredients in recipes?

Let's model these new entities (objects) and their relationships to our
existing entities (objects).

## Creating many-to-many relationships between entities

In an RDBMs, we do this using join tables

### Demonstration: Create tables for borrowers and loans

We'll create SQL scripts in `scripts/library` to add a `borrowers` table and
populate it from data in the `patients` table (since we only need a subset of
the columns from `data/people.csv`).

Then we'll create a `loans` table and populate it using `INSERT` statements.

### Code along: Create and populate an appointments table

We'll create scripts in `scripts/clinic` to add an `appointments` table and
populate it using `INSERT` statements.

### Lab: Create and populate a recipe_ingredients table

We'll create scripts in `scripts/cookbook` to add a `recipe_ingredients` table
and populate it using `INSERT` statements.  Then we'll remove `recipe_id` from
`ingredients`.

## Retrieving data using join tables

### Demonstration: Retrieve information about library loans

We'll create scripts in `scripts/library` to retrieve information about
borrowers, loans, and books.

What happens if we try to `DELETE` a borrower or a book?

### Code along: Retrieve information about appointments

We'll create scripts in `scripts/clinic` to retrieve information about patients,
doctors and appointments.

### Lab: Retrieve information about recipe ingredients

We'll create scripts in `scripts/cookbook` to retrieve information about
recipes.

## Additional Resources

-   [Constraints](http://www.postgresql.org/docs/9.6/static/ddl-constraints.html) -
 An overview of the variety of constraints that PostgreSQL provides.
-   [CREATE TABLE](http://www.postgresql.org/docs/9.6/static/sql-createtable.html) -
 detailed documentation of PostgreSQL's version of
 the SQL `CREATE TABLE` command.
-   [ALTER TABLE](http://www.postgresql.org/docs/9.6/static/sql-altertable.html) -
 detailed documentation of PostgreSQL's version of the
 SQL `ALTER TABLE` command.
-   [Index Introduction](http://www.postgresql.org/docs/9.6/static/indexes-intro.html) -
 The introductory section of the chapter on indexes in PostgreSQL.
-   [CREATE INDEX](http://www.postgresql.org/docs/9.6/static/sql-createindex.html) -
 detailed documentation of PostgreSQL's version of the
  SQL `CREATE INDEX` command.
-   [UPDATE](http://www.postgresql.org/docs/9.6/static/sql-update.html) -
 detailed documentation of PostgreSQL's version of the SQL `UPDATE` command.
-   [INSERT](http://www.postgresql.org/docs/9.6/static/sql-insert.html) -
 detailed documentation of PostgreSQL's version of the
  SQL `INSERT INTO` command.
-   [Joins Between Tables](http://www.postgresql.org/docs/9.6/static/tutorial-join.html) -
 An introduction to querying multiple tables
-   [SELECT](http://www.postgresql.org/docs/9.6/static/sql-select.html) -
 detailed documentation of PostgreSQL's version of the SQL `SELECT` command.

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
