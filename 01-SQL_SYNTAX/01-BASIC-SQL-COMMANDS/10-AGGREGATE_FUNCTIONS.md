# MIN, MAX, AVG, SUM, COUNT 

## SYNTAX

```sql

-- MIN

--- The MIN() function returns the smallest value of the selected column.

    SELECT MIN(column_name)
    FROM table_name
    WHERE condition;

-- MIN EXAMPLES

    SELECT MIN(amount)
    FROM payment;

-- MAX

-- The MAX() function returns the largest value of the selected column.

-- MAX SYNTAX 

    SELECT MAX(column_name)
    FROM table_name
    WHERE condition;

-- MAX EXAMPLES 

    SELECT MAX(amount)
    FROM payment;

-- AVG

-- The AVG() function returns the average value of a numeric column.

-- AVG SYNTAX 

    SELECT AVG(column_name)
    FROM table_name
    WHERE condition;

-- AVG EXAMPLE 

    SELECT ROUND (AVG(amount), 2)
    FROM payment;

-- SUM

-- The SUM() function returns the total sum of a numeric column.

-- SUM SYNTAX

    SELECT AVG(column_name)
    FROM table_name
    WHERE condition;

-- SUM EXAMPLE 

    SELECT SUM(amount)
    FROM payment;

-- COUNT  

-- The COUNT() function returns the number of rows that matches a specified criteria.

-- COUNT SYNTAX 

    SELECT COUNT(column_name)
    FROM table_name
    WHERE condition;

-- COUNT EXAMPLES 

    SELECT count(amount)
    FROM payment
    WHERE amount = 0.00;
```

