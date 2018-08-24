# GROUP BY

The GROUP BY statement is often used with aggregate functions (COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns.

Divides the rows returned from the SELECT statement into groups. For each group we can apply an aggregated function.  


## GROUP BY SYNTAX 

```sql
    SELECT column_name(s), aggregate_function
    FROM table_name
    WHERE condition
    GROUP BY column_name(s)
    ORDER BY column_name(s);
```

## EXAMPLES 

```sql
    SELECT customer_id 
    FROM payment
    GROUP BY customer_id; /* GROUP BY acts like a DISTINCT FUNCTION */
```

The group by clause it's really useful when use in conjunction with and aggregate function. (create a bunch of results into a single value)

```sql
    SELECT customer_id, SUM(amount)
    FROM payment
    /* GROUP BY sorts the result set by customer id and adds up 
    the amount that belongs to the same customer. */
    GROUP BY customer_id;
```

Adding ORDER BY 

```sql
    SELECT customer_id, SUM(amount)
    FROM payment
    /* GROUP BY sorts the result set by customer id and adds up 
    the amount that belongs to the same customer. */
    GROUP BY customer_id
    /* ORDER BY the highest amount. We can see which customers
    have spent the most money. */
    ORDER BY SUM(amount) DESC;


    SELECT staff_id, COUNT(payment_id)
    FROM payment
    /* Getting the results by the staff_id */
    GROUP BY staff_id
    ORDER BY staff_id DESC;

-- This is the same as:

    SELECT staff_id, COUNT(*) /* count the number of rows from payment */
    FROM payment
    /* Getting the results by the staff_id */
    GROUP BY staff_id
    ORDER BY staff_id DESC;
```

How many films of each rating type of rating (R, PG-13, etc, ...) do we have?

Solution:

```sql
     /* choose the rating column from flim, count all the rating types 
     and return the number of counts in a column */
    SELECT rating, COUNT(*) 
    FROM film
    GROUP BY rating;
```

Let's check the rental duration (how many days were the films rented for):

```sql
    SELECT rental_duration, COUNT(rental_duration)
    FROM film
    GROUP BY rental_duration;
```

Let's check the rental rates for each movie rating category:

```sql
    SELECT rating, AVG(rental_rate)
    FROM film
    GROUP BY rating;
```

