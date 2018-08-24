# Using COUNT

CONCEPTS 

The COUNT() function returns the number of rows that matches 
a specified criteria or a specific condition of a query.


## Syntax 

```sql
SELECT COUNT(*)
FROM table;
```

Also,  

```sql
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
```

The COUNT(*) function returns the number of rows returned by a SELECT clause.

When you apply the COUNT(*) to the entire table, PostgreSQL scans table 
sequentially.

You can also specify a specific column count for readability. (As above)

Similar to the COUNT(*) function the COUNT(column) function returns the number 
of rows returned by a SELECT clause.

But it does not consider NULL values in the column. 

We can also use it with DISTINCT:

```sql
SELECT COUNT(DISTINCT column)
FROM table;
```

## EXAMPLES 

```sql
SELECT COUNT(*)
FROM payment;
```

Finding the COUNT of the DISTINCT amount type


```sql
SELECT COUNT(DISTINCT amount)
FROM payment;
```

Also, we can put parenthesis for easy readability

```sql
SELECT COUNT(DISTINCT(customer_id))
FROM payment;
```