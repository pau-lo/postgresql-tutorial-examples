# GENERAL CHALLENGES

1. How many payment transactions were greater than $5.00?

Solution:

```sql
SElECT COUNT(amount) 
FROM payment
WHERE amount > 5;
```

2. How many actors have a first name that starts with the letter P?

Solution:

```sql
SElECT COUNT(first_name)
FROM actor
WHERE first_name LIKE 'P%';
```

or

```sql
SElECT COUNT(*) /* counting all rows from actor table */
FROM actor
WHERE first_name LIKE 'P%';
```

3. How many unique districts are our coustomer from?

Solution:

```sql
SELECT COUNT(DISTINCT(district))
FROM address;
```

4. Retrieve the list of names for those distinct districts from the previous question.

Solution:

```sql
SELECT DISTINCT(district)
FROM address;
```

5. How many films have a rating of R and a replacement cost between $5 and $15.


Solution:

```sql
SELECT COUNT(DISTINCT(title, rating)) 
FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;

-- OR

SELECT COUNT(*) 
FROM film
WHERE rating = 'R'
AND replacement_cost BETWEEN 5 AND 15;
```

6. How many films have the word 'Truman' somewhere in the title?

Solution:

```sql
SELECT COUNT(*)
FROM film
WHERE title ILIKE '%Truman%';
```
