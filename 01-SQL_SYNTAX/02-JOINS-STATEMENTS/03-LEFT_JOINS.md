# LEFT OUTER JOIN

The LEFT JOIN keyword returns all records from the left table (table1), and the matched records from the right table (table2). The result is NULL from the right side, if there is no match.

- Left outer join produces a complete set of records from Table A, with the matching records (where available) in Table B. If there is no match, the right side will contain null.

## LEFT JOIN Syntax

```sql
    SELECT column_name(s)
    FROM table1
    LEFT JOIN table2 ON table1.column_name = table2.column_name;
```

## EXAMPLES

Left outer Join with a where statement:

- To produce the set of records only in Table A, but not in Table B, we perform the same left outer join, then exclude the records we don't want from the right side via a where clause.

```sql
        SELECT * FROM tableA
        LEFT OUTER JOIN TableB
        ON TableA.name = TableB.name
        WHERE TableB.id IS null


        SELECT film.film_id,
        film.title, 
        inventory_id
        FROM film
        LEFT OUTER JOIN inventory
        ON inventory.film_id = film.film_id;

-- Now let's grab all the movies that are not in inventory

        SELECT film.film_id,
        film.title, 
        inventory_id
        FROM film
        LEFT OUTER JOIN inventory
        ON inventory.film_id = film.film_id
        WHERE inventory.film_id IS NULL;

-- A different approach 

        SELECT film.film_id,
        film.title, 
        inventory_id
        FROM film
        LEFT OUTER JOIN inventory
        ON inventory.film_id = film.film_id
        WHERE inventory_id IS NULL
        ORDER BY title;
```