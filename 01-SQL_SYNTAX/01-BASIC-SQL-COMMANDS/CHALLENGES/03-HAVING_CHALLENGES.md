# HAVING CHALLENGE 

- This challenge needs a HAVING statement on the solution

EXMPLE OF ORDER OF commands 

```sql
    SELECT <attribute and function list>
    FROM <table list>
    WHERE <condition>
    GROUP BY <grouping attributes>
    HAVING <group condition>
    ORDER BY <attribute list>  (columns we SELECT above)
```

## QUESTIONS 

```sql
/*QUESTION 1

    Situation:

    We want to know what customers are elegible for our platinum credit card.  The requirements are that the customer has at least a total of 40 transaction payments. 

    Challenge:

    What customers are eligible for the credit card?*/

    -- Solution:

    SELECT customer_id, COUNT(amount)
    FROM payment
    GROUP BY customer_id
    HAVING COUNT(amount) > 40;

-- QUESTION 2

    -- Situation:

    /*When grouped by rating, what movie rating have an average rental duration of more than 5 days?*/

    -- Solution:


    SELECT rating, AVG(rental_duration)
    FROM film
    GROUP BY rating
    HAVING AVG(rental_duration) > 5;
```
