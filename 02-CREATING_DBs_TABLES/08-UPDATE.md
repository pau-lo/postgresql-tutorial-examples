# UPDATE

Update existing data in a table

## SYNTAX EXAMPLE

```sql

-- To change the values of the columns in a table, you use the UPDATE statement.

    UPDATE table
    SET column1 = value1,
        column2 = value2, ...
    WHERE condition;

    -- EXAMPLE:

    -- This updated all the rows in the column name description

    UPDATE link
    SET description = 'This is a description';

-- This updated a particular row only.  

    UPDATE link
    SET description = 'This is Bing: An ok search engine'
    WHERE name LIKE 'B%';


    UPDATE link
    SET description = 'New Description'
    WHERE id = 1
    RETURNING id, url, name, description;
```

The key word here is returning. 