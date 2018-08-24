# Using SELECT with DISTINCT

## CONCEPT

DISTINCT is mainly use to remove duplicates.  The DISTINCT keyword can be
used to return only distinct (different values)

## SAMPLE SYNTAX

```sql
SELECT DISTINCT column1, column2
FROM table_name;
```

EXAMPLE:  Checking which year the movies were release

```sql
SELECT DISTINCT release_year
FROM film;
```

EXAMPLE: Checking for the movies rental prices

```sql
SELECT DISTINCT rental_rate
FROM film;
```

## CHALLENGE SELECT with DISTINCT


SITUATION

We want to know the types of ratings movies can get in the United States 
( e.g PG, PG-13, R, etc,...) and which ones we have in our database.

CHALLENGE

Use a SELECT DISTINCT statement to check the distinct rating types our films 
can have in our database.


SOLUTION

```sql
SELECT DISTINCT rating FROM film;
```

That's it.