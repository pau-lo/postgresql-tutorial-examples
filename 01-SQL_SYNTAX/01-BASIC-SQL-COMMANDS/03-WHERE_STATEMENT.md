# Using SELECT with WHERE

CONCEPT

The WHERE clause is used to filter records.

The WHERE clause is used to extract only those records that fulfill a
specified condition.

One of the most important topics for SQL Fundamentals

We know how to query data from a table. What if you want 
to query just particular rows from a table. 

In this case, we need to use the WHERE clause in the SELECT
statement.


## SYNTAX examples

```sql
SELECT column_1, column_2, ... column_n
FROM table_name
WHERE conditions; 
```

SELECT WHERE statement

- The WHERE clause appears right after the FROM clause of the SELECT statement.

- The conditions are used to filter the rows returned from the SELECT statement.

- We have to use SQL operators

Here are some operators we can use:

    SELECT WHERE statement operators

    =, >, < , >= as well as

    <> or != (Not equal)
            
    AND (logical operator AND) for different columns
            
    OR (logical operator OR) for same columns 


## More EXAMPLES

If you want to get all the customers whose first name are Jamie, you can use 
the WHERE clause with the equal (=) operator:

```sql
SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie';
```

Note that for string values we need to put single quotes (always)

I you want to select the cusotemr whose first name is Jamie and last name is
Rice, you can use the logical operator that combines two conditons:


```sql
SELECT last_name, first_name
FROM customer
WHERE first_name = 'Jamie'
AND last_name = 'Rice';
```

If you want to know who paid the rental which amount is either less than 1 usd 
or greater tna 8 usd, you can use the following operators:


```sql
SELECT customer_id, amount, payment_date
FROM payment
WHERE amount <= 1 OR amount >= 8;
```

## CHALLENGES

We now know enough to begin to answer challenge questions posed as business
task;

for example:

- How many customers have the first name Jared?

VS.

- Use SELECT WHERE to find Jared in the first_name column of the customer
  table


### Challenge #1

SITUATION

A customer forgot theri wallet at our store! We need to track dow theri eamil
to inform them.

Challenge

What's the email for the customer with the name Nancy Thomas?

Solution

```sql
SELECT email 
FROM customer
WHERE first_name = 'Nancy' 
AND last_name = 'Thomas';
```

### Challenge #2

SITUATION

A customer wants to now what the movie "Outlaw Hanky" is about.

Challenge 

Could you give them the description for the movie "Outlaw Hanky"?

Solution

```sql
SELECT description
FROM film
WHERE title = 'Outlaw Hanky';
```

### Challenge #3 

SITUATION

A customer is late on their movie return.  I know their address is 
'259 Ipoh Drive'.  I want to call them to let them know!

Challenge 

Can you get me the pheon number ofr the person who lives at '259 Ipoh Drive'?

Solution

```sql
SELECT phone 
FROM address
WHERE address = '259 Ipoh Drive';
```


