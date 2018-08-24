# Using ORDER BY clause 

CONCEPT

- When you query data from a table it returns the rows in the order that they inserted into the table.

- In order to sort the result set, you use the ORDER BY clause in the SELECT statement. 

- The ORDER BY keyword is used to sort the result-set in ascending or descending order.

- The ORDER BY keyword sorts the records in ascending order by default. 

- To sort the records in descending order, use the DESC keyword.

- The ORDER BY clause allows you to sort the rows returned from the SELECT statement in ascending or descending order based on criteria specified.

## SYNTAX 

```sql
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
```

- Specify the column that you want to sort in the ORDER BY clause.

- If you sort the result set by multiple columns, use a comma to separate between two columns

- Use ASC to sort results in ascending order and DESC for descending order.

- If left blank the ORDER BY clause will use ASC by default.

### EXAMPLES 

```sql
SELECT first_name, last_name
FROM customer
ORDER BY last_name ASC;
```

```sql
SELECT first_name, last_name
FROM customer
ORDER BY first_name ASC,
last_name DESC;
```

### CHALLENGES

Questions

1. Get the customer ID numbers for the top 10 highest payment amounts.  

```sql
SELECT customer_id, amount
FROM payment
ORDER BY amount DESC
LIMIT 10;
```

2. Get the titles of the movies with fiLM ids 1-5. (one through five)

Efficient way:

```sql
SELECT film_id, title
FROM film
WHERE film_id <=5;
```
Also good but a bit more syntax:

```sql
SELECT film_id, title
FROM film
WHERE film_id >=1 AND film_id <=5;
```
Another way using ORDER by:

```sql
SELECT film_id, title, release_year
FROM film
ORDER BY film_id
LIMIT 5;
```


