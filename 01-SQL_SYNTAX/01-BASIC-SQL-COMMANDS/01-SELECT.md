# Example of SELECT Statement

```sql
SELECT column1, column2, ... FROM table_name;
```

# CONCEPT

The SELECT statement is used to select data from a database.

The * will query all the data from the entire columns, which may be not useful
in a big data set.  It can slow down your application. It is better to specify
column names in the SELECT clause to get the only necessary data from the table. 

Example from Dvd_rentals database.

```sql
SELECT * FROM actor;
```

or 

```sql
SELECT first_name, last_name FROM actor;
```

also

```sql
SELECT actor_id FROM actor;
```

and

```sql
SELECT last_update FROM actor;
```

# Challenge Using SELECT

Situation

We want to send out a promotional email to our existing customers!


Challenge

Use a SELECT Statement to grab the first and last names of every customer 
and their email address.

Solution

```sql
SELECT first_name, last_name, email
FROM customer;
```

That's it.