# LIKE Statement

## CONCEPT

The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

There are two wildcards used in conjunction with the LIKE operator:

- % - The percent sign represents zero, one, or multiple characters
- _ - The underscore represents a single character

### SYNTAX

```sql
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
```

Suppose the store manager asks you find a customer that he does not remember the name exactly.  Only remenbers something like 'Jen'.
How do you find the exact custoemr that the store manager is asking?

The best way is to use the LIKE statement

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'Jen%';
```

- Notice that the WHERE clause contains a special expression: the first_name, the LIKE operator and a string that contains a percent (%) character, which is referred as pattern.

- The query returns rows whose values in the first name column begin with Jen and may be followed by any sequence of characters

- This technique is called pattern matching. 

You can also construct a pattern by combining a string with wildcard characters and use the NOT LIKE operator to find the matches. 

### EXAMPLE 

Names that end up in 'y':

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%y';
```

Finding names that have 'er' anywhere in their names:

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '%er%';
```

Now, every underscore counts for a single character, We are finding the names that have 'her' and then any letter after that.

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name LIKE '_her%';
```

### NOT LIKE examples

Lets get the exact opposite of 'Adr' in any name.

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name not LIKE 'Adr%';
```

Something to note is that the like operator is case sensitive..But wwe can use ILKE for case-insesitivity.

```sql
SELECT first_name, last_name
FROM customer
WHERE first_name not ILIKE 'BaR%';
```
