# GROUP BY CHALLENGE

- Using just about anything
- GROUP BY statement will be used
- Hint:  Break down the problem into individul tasks

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
/*QUESTION 1:

    Situation:

    We have two staff members with Staff IDs 1 and 2.  We want to give a bonus to the staff member that handled the most payments. 

    Challenge 

    How many pyaments did each staff member handle?  And how much was the total amount procesed by each staff member?*/

    Solution:

    SELECT staff_id, COUNT(amount), SUM(amount) 
    FROM payment
    GROUP BY staff_id
    ORDER BY staff_id DESC;

-- QUESTION 2:

    -- Situation:

    /*Corporate headquarters is auditing  our store!
    They want to know the average replacement cost of movies by rating.

    For example, R rated movies have an average replacement cost of $20.23*/

    -- Solution:

    SELECT rating, ROUND(AVG(replacement_cost), 2)
    FROM film
    GROUP BY rating;

-- QUESTION 3:

    -- Situation:

    -- We want to send coupons to the 5 customers who have spent the most amount of money.

    -- Challenge:

    -- Get the customer ids of the top 5 spenders.

    -- Solution:

    SELECT customer_id, SUM(amount)
    FROM payment
    GROUP BY customer_id
    ORDER BY SUM(amount) DESC
    LIMIT 5;
```

