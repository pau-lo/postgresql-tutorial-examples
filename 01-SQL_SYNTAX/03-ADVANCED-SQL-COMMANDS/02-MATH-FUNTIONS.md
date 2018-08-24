# MATHEMATICAL FUNCTIONS

SQL comes with a lot of mathematical operators built-in that are very useful for numberic column types

Here is more on [Math functions](https://www.postgresql.org/docs/9.5/static/functions-math.html).


## MATH FUNCTIONS EXAMPLES 

Example of mathematical operators:

- Adding

```sql
        SELECT customer_id + rental_id as new_id
        FROM payment;
```

You can also do multiplication, division, subtraction...etc,...