# TIMESTAMPS 

PostgreSQL might use different syntax than MySQL, Oracle, etc..

- SQL allow us to use the timetamp data type to retain time information. 

- We can create timestamps columns

- Extract information from timestamps objects

The PostrgreASQL extract function extracts parts from a date.  

The syntax looks a bit like this:

- extract ( unit from date )

We can extract many types of time-base information

- Such as day, dow (day of the week), doy (day of the year),  epoch, hour, microseconds, millenium, milliseconds, minute, month, quarter, second, week, and year. Here is more info on [postgreSQL timestamp](https://www.postgresql.org/docs/9.1/static/functions-datetime.html)


## EXTRACT SYNTAX

```sql
    EXTRACT(field FROM source)
```

## Extract Function Examples

```sql

    -- Getting a list of days:  

    SELECT extract(day from payment_date)
    FROM payment;

    Filtering by customer_id and day

    SELECT customer_id,
    extract(day from payment_date) AS day
    FROM payment;

-- Why doing extract would be useful?

-- Getting the total amounts expenditure by the month.

    SELECT SUM(amount) as total,
    extract(month from payment_date) AS month
    FROM payment
    GROUP BY month
    ORDER BY total DESC;
```

This answers the question of how much did I get in payments of my highest grossing month? And its going to be month 4 == April and with a total amount of 28,559.46
