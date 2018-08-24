# INNER JOIN

The INNER JOIN keyword selects records that have matching values in both tables.

- It allows you to relate data in one table to the data in other tables


## INNER JOIN Syntax

```sql
    SELECT column_name(s)
    FROM table1
    INNER JOIN table2 ON table1.column_name = table2.column_name;


-- To get data from both tables, you use the INNER JOIN clause in the SELECT statement i.e. Having two tables A and B.

        SELECT A.pka, A.c1, B.pkb, B.c2
        FROM A
        INNER JOIN B ON A.pka = B.fka;


        SELECT * FROM TableA
        INNER JOIN tableB
        On TableA.name = TableB.name
```

- The steps are to specify the columns in both tables.
- Then you specify the main table.
- Lastly, you specify the table that the main table joins to.

## INNER JOIN EXAMPLES

Joining Table B (payment) to Table A (customer).

```sql
    SELECT customer.customer_id,
    first_name,
    last_name,
    email,
    amount,
    payment_date
    FROM customer
    INNER JOIN payment ON payment.customer_id = customer.customer_id;
```

ORDER BY customer id:

 ```sql
    SELECT customer.customer_id,
    first_name,
    last_name,
    email,
    amount,
    payment_date
    FROM customer
    INNER JOIN payment ON payment.customer_id = customer.customer_id
    ORDER BY customer.customer_id;
```

You can also add a WHERE clause at the end like:

```sql
    WHERE customer.customer_id = 3;
```

Joining Staff table with Payment table:

```sql
    SELECT payment_id,
    amount,
    first_name,
    last_name
    FROM payment
    JOIN staff ON payment.staff_id = staff.staff_id;
```

Notice that we didn't put INNER because by default in most SQL engines JOIN assumes we are trying to use an INNER JOIN.


```sql
    SELECT store_id, 
    title
    FROM inventory
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE store_id = 1;


    SELECT title, COUNT(title)
    FROM inventory
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE store_id = 1
    GROUP BY title;

    SELECT title, COUNT(title) AS num_copies_at_store1
    FROM inventory
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE store_id = 1
    GROUP BY title;
```

How many titles of Agent Truman do I have at store at id = 1?  We can now answer real business setting questions with this query.

```sql
    SELECT title, COUNT(title) AS num_copies_at_store1
    FROM inventory
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE store_id = 1
    GROUP BY title
    ORDER BY title;


-- Inner Join Language on film

    SELECT film.title, 
    language.name AS movie_language
    FROM film
    INNER JOIN language ON language.language_id = film.language_id;


-- In a typical SQL worksetting it would look like this.


    SELECT title,
    name AS movie_language
    FROM film
    JOIN language AS lan ON lan.language_id = film.language_id;

-- You don't actually need to put the AS statement you just need to put a space.


    SELECT title,
    name movie_language
    FROM film
    JOIN language lan ON lan.language_id = film.language_id;
```

But putting an AS statement would be more readable. 