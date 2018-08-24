# NOT NULL

 - NULL is unknown or missing information
 - The NULL value is different from empty or zero
 - Asking for the email address of a person if we don't know, we use the NULL value.
- Thus if the person does not have any email address, we can mark it as an empty string

PostgreSQL provides the not-null constraint to enforce a column must not accept NULL values.  It means that whenever you insert or updatae data, you must specify a value that is different from the Null value. 

## SYNTAX EXAMPLE

HAVING A TABLE LIKE

```sql
    CREATE TABLE table_name)
    first_name VARCHAR(50),
    sales integer NOT NULL);

-- and then inserting into:

    INSERT INTO table_name(first_name)
    VALUES ('John');
```

The sales constraint cannot be NULL so if we insert this value here PostgreSQL will wants to fill the rest of the NULL values because I am not providing that data...if run this therefore we will get an error.

This is useful when building application to have users input all the necessary information and thus we will not have any info missing.