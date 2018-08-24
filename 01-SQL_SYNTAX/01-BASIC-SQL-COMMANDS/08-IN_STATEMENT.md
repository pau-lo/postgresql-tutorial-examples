# Using IN STATEMENT 

### CONCEPT

The IN operator allows you to specify multiple values in a WHERE clause.

The IN operator is a shorthand for multiple OR conditions.

You use the IN operator with the WHERE clause to check if a value matches another value in a list of values .

The expression returns if the value matches any value in the list i.e., value1, value2, etc.  The list of values is not limited to a list of numbers or strings but also a result set of a SELECT statement as shown in the following query:

```sql
Value IN (SELECT value FROM table_name)
```

### SYNTAX 

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

### EXAMPLE 

Supposed we want to know the rental information of customer_id one and two.

```sql
SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id IN (1,2)
ORDER BY return_date DESC;

-- We can also look for NOT IN 

SELECT customer_id, rental_id, return_date
FROM rental
WHERE customer_id NOT IN (1,2)
ORDER BY return_date DESC;

-- Or to look for 3,6,9 not necessarily in order

SELECT customer_id, rental_id, return_date
FROM rental
/*  This is the same as WHERE customer_id = 3 OR customer_id = 6 OR
customer_id = 9 */
WHERE customer_id IN (3, 6, 9)
ORDER BY return_date DESC;

SELECT * FROM payment
WHERE amount IN (7.99, 8.99);
```

In General the IN stament makes more readable and it runs it faster.



