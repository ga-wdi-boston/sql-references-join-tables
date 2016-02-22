![General Assembly Logo](http://i.imgur.com/ke8USTq.png)

# Many-to-Many Relationships in PostgreSQL

## Instructions

Fork and clone this repository.

## Objectives

By the end of this lesson, students should be able to:

-   Create join tables to represent many-to-many relationships.
-   Insert rows in join tables to create many-to-many relationships.
-   Select data about many-to-many relationships using join tables.

## Prerequisites

-   [An Introduction to PostgreSQL Foreign Keys](https://github.com/ga-wdi-boston/sql-references-join)

## Handling More Complex Data Relationships

There are a variety of relationships that cannot be easily captured
 by the simple one-to-many relationships we've looked at so far.
Suppose you were making an application for planning and attending events.
Presumably, event will generally have more than one person attending.
But one person might also attend multuple events.
This is an example of a many to many relationship.

The way most many-to-many relationships are represented is using _join tables_.
A join table is a table, containing two sets of foreign keys,
that defines a bi-directional relationship between the two other tables
that those foreign keys refer to.
Each row in the join table relates one row in the 'left' table
 with one row in the 'right' table (left and right are arbitrary).
The same 'left' reference may appear with many different 'right' references
 and vice versa.

In the example above, we might have a `people` table and an `events` table.
A join table would create a cross-reference between these two tables,
with each row linking one person to one event.

**people_events**

| id | people_id | event_id |
|:--:|:---------:|:--------:|
|  1 |         5 |       4  |
|  1 |         7 |       4  |
|  1 |         9 |       4  |
|  1 |         5 |       4  |
|  1 |         5 |       4  |

It's usually helpful to model these joins
 as their own entities, where possible,
 since that will give your table a more semantic name.
In doing so, you will also commonly find yourself adding additional columns
 to the table to represent other properties of the entities.

**attendances**

| id | people_id | event_id | other_data |
|:--:|:---------:|:--------:|:----------:|
|  1 |         5 |       4  |    ...     |
|  1 |         7 |       4  |    ...     |
|  1 |         9 |       4  |    ...     |
|  1 |         5 |       4  |    ...     |
|  1 |         5 |       4  |    ...     |

## Setup

### Code Along : Create a Database

We'll use `sql-join-tables` as the working database.
Just as we did in the previous lesson, we'll create it using **[CREATE DATABASE](http://www.postgresql.org/docs/9.4/static/sql-createdatabase.html)**
with `sql-crud` specified as the `TEMPLATE`.

**bash**

```bash
psql
```

**psql**

```sql
psql (9.4.5)
Type "help" for help.

wdi=# CREATE DATABASE "sql-join-tables" TEMPLATE "sql-crud";
CREATE DATABASE
wdi=# \c sql-join-tables
You are now connected to database "sql-join-tables" as user "wdi".
sql-join-tables=#
```

---

## Join Tables

### Demonstration

We had `addresses`, `people`, and `cities` tables in the previous lesson -
 one city was tied to many addresses, and each address was tied to one
 (or potentially more) people.

In this lesson, `people` and `cities` will be the same;
however, now `addresses` will represent the link between a person and a city.

The first step is creating `people` and `cities` just like we did before.
Next, we create a new `addresses` table -
this time, though, with two columns of foreign keys.

**addresses**

| id | people_id | city_id |  no | street |
|:--:|:---------:|:-------:|:---:|:------:|
|  1 |         5 |      4  | 440 | 10th   |
|  1 |         7 |      2  | 991 | 11th   |
|  1 |         9 |      2  | 406 | 12th   |
|  1 |         5 |      7  | 143 | 13th   |
|  1 |         5 |      7  | 647 | 1st    |

New records can be inserted directly into the `addresses` table,
 linking together People and Cities.
These tables can all be queried using INNER JOIN or using nested SQL queries,
 much like in the previous examples.

### Code Along : Join Tables

You're all familiar with LinkedIn -
let's imagine how a skill endorsement system like LinkedIn's might work.

First, let's create a `skills` table
and fill it with data from `data/skills.csv`.

Then we'll create an `endorsements` table to connect `skills`
to the existing `people` table.

Next we'll insert a few `endorsements` connecting `people` to `skills`.

Lastly, we'll build and run some queries using the `endorsements` join table.

### Lab : Join Tables

Create a `companies` table and fill it with data from `data/companies.csv`.
Then make a `jobs` table to connect `companies` to the existing `people` table;
 the `jobs` table should contain `start_date` and `end_date` columns
 in addition to linking People to Companies.

Next insert some new `jobs` connecting `people` to `companies`.

-   Give at least two people non-overlapping jobs at more than one company.
-   Have at least two companies employ at least four people.

Lastly, run some queries using the `jobs` join table:

-   For at least one company find all the people who currently work there.

-   For at least one person find all of the companies they've worked for
 and order the result by start date.
