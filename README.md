![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# An introduction to many-to-many relationships in PostgreSQL

## Instructions

Fork, clone, and branch(lesson).

## Objectives

By the end of this lesson, students should be able to:

- Create join tables to represent many-to-many relationships.
- Insert rows in join tables to create many-to-many relationships.
- Select data about many-to-many relationships using join tables.

## Prerequisites

- [An Introduction to PostgreSQL Foreign Keys](https://github.com/ga-wdi-boston/sql-join)

## Introduction

There are a variety of relationships that cannot be easily captured by a simple reference from one table to another.  We'll explore how to represent many-to-many relationships using join tables to represent that relationship.

Join tables contain two foreign keys defining a bi-directional relationship between two other tables.  Each row in the join table relates one row in the left table with one row in the right table (left and right are arbitrary).  The same left row reference may appear with many different right row references and vice versa.  A join table usually contains additional columns to hold more detail about the relationship.

## Create a database

### Code along

We'll use `sql-join-tables` as the working database.  Just as we did in the previous lesson we'll create it using  **[CREATE DATABASE](http://www.postgresql.org/docs/9.4/static/sql-createdatabase.html)** with `sql-crud` specified as the `TEMPLATE`.

```bash
$ psql
```

```sql
psql (9.4.5)
Type "help" for help.

and=# CREATE DATABASE "sql-join-tables" TEMPLATE "sql-crud";
CREATE DATABASE
and=# \c sql-join-tables
You are now connected to database "sql-join-tables" as user "and".
sql-join-tables=#
```

---

## Join tables

### Demonstration

First we'll create an `addresses` table to connect `people` to `cities`.

Then we'll insert `addresses` connecting a few `people` to some `cities`.

Last we'll build and run some queries using the `addresses` join table.

### Code Along

We'll create a `skills` table and fill it with data from `data/skills.csv`.  Then we'll create an `endorsements` table to connect `people` to `skills`.

Next we'll insert `endorsements` connecting `people` to `skills`.

Last we'll build and run some queries using the `endorsements` join table.

### Practice

We'll create a `companies` table and fill it with data from `data/companies.csv`.  Then we'll create a `jobs` table to connect `people` to `companies`.  The `jobs` table should contain `start_date` and `end_date` columns.

Next we'll insert `jobs` connecting `people` to `companies`.  Give at least two people non-overlapping jobs at more than one company.  Have at least two companies employ at least four people.

Last we'll build and run some queries using the `jobs` join table.  For at least one company find all the people who currently work there.  For at least one person find all of the companies they've worked for and order the result by start date.

---

## Assessment
