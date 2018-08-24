# UNIQUE CONSTRAINT

Every time you insert a vew row, PostgreSQL checks if the value is already in the table.  If it found that the new value is already there, it would give back an erro mesage and reject the changes.  The same process is carried out for the update existing data. 

- To make sure the value in a column or a group of columns is unique in a table 

- Ensuring that the value in a column or a group of columns is unique across the table such as email address, etc.. 
- For this PostgreSQL provides you with unique constraints to make sure the uniqueness of the data is maintained corrrectly. 

# SYNTAX EXAMPLE

If we create a table,

```sql
    CREATE TABLE people (
        id_serial PRIMARY KEY,
        first_name VARCHAR(50),
        email VARCHAR(100) UNIQUE);

-- Now if we try inserting a new row.

    INSERT INTO people(id, first_name, email)
    VALUES (1, 'Joe', 'joe@abc.com');

-- Now

    INSERT INTO people(id, first_name, email)
    VALUES (1, 'Joey', 'joe@abc.com');
```

This will give us an error: duplicate value violates unique contraint because email already exist.
