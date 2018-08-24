# BETWEEN OPERATOR

### CONCEPT

The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

The BETWEEN operator is inclusive: begin and end values are included.

We use the BETWEEN operator to match a value against a range of values.

For example:

```sql
value BETWEEN low AND high;
```

- If the value is greater than or equal to the low value and less than or equal to the high value, the expression returns true, or vice versa.

- We can rewrite the BETWEEN operator by using the greater than or equal (>=) or less than equal or (<=) operators as the following statememt:

```sql
value >= low and value <= high;
```
- if we want to check if a value is out of range, we use the NOT BETWEEN operator:

```sql
value NOT BETWEEN low AND high;

-- or

value < LOW or VALUE > high;
```

### SYNTAX 

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

### EXAMPLES 

Imagine we wanted to select payments between customer IDs and payment amounts that were between $8 amd $9.

```sql
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 8 AND 9; 

-- or not between $8 and $9

SELECT customer_id, amount
FROM payment
WHERE amount not BETWEEN 8 AND 9; 


-- Checking payments betwee february 2-15:

SELECT amount, payment_date
FROM payment
WHERE payment_date BETWEEN '2007-02-07' AND '2007-02-15';
```