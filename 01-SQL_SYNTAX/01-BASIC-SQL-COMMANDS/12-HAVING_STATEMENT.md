# HAVING STATEMENT

The HAVING clause was added to SQL because the WHERE keyword could not be used with aggregate functions.

The having clause is used in conjunction with the GROUP BY clause to filter group rows that do not satisfy a specified condition.  It's like the WHERE clause except we are using it with the GROUP BY.

## HAVING SYNTAX 

```sql
    SELECT column_name(s), aggregate_function(column_name)
    FROM table_name
    WHERE condition
    GROUP BY column_name(s)
    HAVING condition
    ORDER BY column_name(s);
```

- The HAVING clause sets the condition for group rows created by the GROUP BY clause after the GROUP BY clause applies while the WHERE clause set the condition for individual row before GROUP BY clause applies.

- This is the main difference between the HAVING and WHERE clauses.

## EXAMPLES

Let's say I want to find out the customer ids of the customers who spend more than $150 dollars.

```sql
    SELECT customer_id, SUM(amount)
    FROM payment
    GROUP BY customer_id
    HAVING SUM(amount) > 159;

-- Now, let's find the number of customers per store.

    SELECT store_id, COUNT(customer_id) /*The Number of customers per store*/
    FROM customer
    GROUP BY store_id;


-- Finding the store that has more than 280 customers:

    SELECT store_id, COUNT(customer_id) /*The Number of customers per store*/
    FROM customer
    GROUP BY store_id
    HAVING COUNT(customer_ID) > 280;


-- When to use WHERE vs. HAVING:

-- Figuring our the avg rental rate for this movies:

    SELECT rating, AVG(rental_rate)
    FROM film
    WHERE rating IN ('R', 'G', 'PG')
    GROUP BY rating;

-- We did the filtering before our GROUP BY. WHERE was used for this reason. 

-- But for HAVING we can find specifically the price of a movie that is less than $3. 

    SELECT rating, AVG(rental_rate)
    FROM film
    WHERE rating IN ('R', 'G', 'PG')
    GROUP BY rating;
    HAVING AVG(rental_rate) < 3;, 
```