# SQL ALIASES

SQL aliases are used to give a table, or a column in a table, a temporary name.

- Aliases are often used to make column names more readable.

- An alias only exists for the duration of the query.

- AS allows us to rename columns or table selections with an alias 



## SQL ALIASES SYNTAX 

```sql

-- ALIAS COLUMN SYNTAX 

    SELECT column_name AS alias_name
    FROM table_name;

-- ALIAS TABLE SYNTAX 

    SELECT column_name(s)
    FROM table_name AS alias_name;
```

## SYNTAX EXAMPLES 


Renaming a column to total spent:

```sql
    SELECT customer_id, SUM(amount) AS total_spent
    FROM payment
    GROUP BY customer_id;
```
