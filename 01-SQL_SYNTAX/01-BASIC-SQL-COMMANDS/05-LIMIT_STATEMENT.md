# Using the LIMIT plause 

CONCEPT

- LIMIT allows you to limit the number of rows you get back after a query

- Useful when wanting to get all the columns but not all rows

- Goes at the end of query


## SYNTAX 

```sql
SELECT column1, column2, ...
FROM table_name
LIMIT number;
```

## EXAMPLE

```sql
SELECT first_name
FROM customer
LIMIT 10;
```