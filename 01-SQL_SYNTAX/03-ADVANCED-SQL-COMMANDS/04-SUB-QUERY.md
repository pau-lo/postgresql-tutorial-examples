# SUBQUERY

A subquery allows us to use multiple SELECT statements, where we basically have a query within a query

- A subquery is a query nested inside another query

- To construct a subquery, we put the second query in brackets and use it in the WHERE clause as an expression

## EXAMPES 

Suppose we want to find the fimls whose rent rate is higher than the average rental rate

We can do it in two steps:

1. Find the average rental rate by using the SELECT statement and the average function (AVG)

2. Use the result of the first query in the second SELECT statement to find the films that we want

```sql
         -- 1.

        SELECT AVG(rental_rate) 
        FROM film;  /* This will gives us back 2.98 */

         -- Then, we can grab the following:

         -- 2. 

        SELECT title, rental_rate
        FROM film
        WHERE rental_rate > 2.98;
```

This is a little inconvenience because we needed to use two queries. The code is not elegant because it requires two steps.  We want a way to pass the result of the first query to the second query in one query.

For this it is better to use a SUBQUERY.

## SUBQUERY EXAMPLES 

- To construct a subquery, we put the second query in brackets and use it in the WHERE clause as an expression

```sql
        SELECT film_id, title, rental_rate
        FROM film
        WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);
```

- Let's match an inventory id (in rental table) integer in if another table (inventory table).  Find the films that have been returned between two specific dates May 29th and May 30th.

```sql
        SELECT inventory.film_id
        FROM rental
        INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
        WHERE 
        return_date BETWEEN '2005-05-29' AND '2005-05-30';
```

- Let's use this entire query as a subquery to get the titles of the films.

```sql  
        SELECT film_id, title
        FROM film
        WHERE film_id IN

        /* Getting the list of film IDs */
        (SELECT inventory.film_id
        FROM rental
        INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
        WHERE 
        return_date BETWEEN '2005-05-29' AND '2005-05-30');
```

Giant subqueries are a little daunting.  Thus, should we use namimg schemes or aliasing or code formatting.


