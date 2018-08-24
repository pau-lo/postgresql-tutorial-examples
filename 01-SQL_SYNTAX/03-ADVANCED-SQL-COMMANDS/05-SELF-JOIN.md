# SELF JOIN

This is a special case that you join a table to itself.

- You use a self join when you want to combine rows with other rows in the same table.

- To perform the self join operation, you must use a table alias (AS statement) to help SQL distinguish the left table from the right table of the same table.

## SELF JOIN Syntax

```sql
    SELECT column_name(s)
    FROM table1 T1, table1 T2
    WHERE condition;    
```

Examples:

| employee_name  | employee_location|
| -------------  |:----------------:|
| Joe            | New York         |
| Sunsil        | India             |
| Alex          | Russia            |
|  Albert        | Canada           |
| Jack           | New York         |

```sql
    SELECT employee_name
    FROM employee
    WHERE employee_location = "New York"
```

OR

```sql
    SELECT e1.employee_name 
    FROM employee AS e1, employee AS e2
    WHERE
    e1.employee_location = e2.employee_location
    AND e2.employee_name = "Joe";
```

- This syntax doesn't specifically specify the term JOIN that's because it's a self join.  Because we are using aliases from the same table employee, employee, this is know as a self join 

- This query wll return the names Joe and Jack since Jack is the only other person who ives in NY like jow.

- Queries that refer to the same table can be greatly simplified by re-writing the queris as self joins.

- There is defintely a performance benefit for this as well vs doing two sub-queries. 

More Examples:

Let's say we wanted to retrieve all customers whose last name matched the first name of another customer. 

```sql

-- The best way to do this is using a self join.

    SELECT a.first_name, a.last_name, 
    b.first_name, b.last_name
    FROM customer AS a, customer AS b
    WHERE a.first_name = b.last_name;


-- To make sure they're different people let's grab their customer  id. 

    SELECT a.customer_id, a.first_name, a.last_name, 
    b.customer_id, b.first_name, b.last_name
    FROM customer AS a, customer AS b
    WHERE a.first_name = b.last_name;

-- Now with the JOIN statmennt

    SELECT a.customer_id, a.first_name, a.last_name, 
    b.customer_id, b.first_name, b.last_name
    FROM customer AS a
    JOIN customer AS b
    ON a.first_name = b.last_name;
```






















