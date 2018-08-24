# INSERT

- When you create a new table, it does not have any data
- The first thing you often do is to insert new rows into the table
- SQL provides the INSERT statement that allows you to inset one or more rows into a table at a time

## SYNTAX EXAMPLE 

```sql
    INSERT INTO table(column1, column2, ...)
    VALUES (value1, value2, ...);
```

Major thing to note here it's the value list must be in the same order as the columns list specified after the table name

Adding multiple rows into a table at a time:

```sql
    INSERT INTO table (column1, column2, ...)
    VALUES(value1, value2, ...), ...;

    -- EXAMPLE:

    INSERT INTO table_name (column1, column2)
    VALUES 
    ('www.a.com', 'A'),
    ('www.b.com', 'B');  S

-- To insert data that comes form another table, you use the INSERT INTO SELECT statement:

    INSERT INTO table
    SELECT column1, column2, ...
    FROM another_table
    WHERE condition;

    -- EXAMPLE:

    INSERT INTO table_original_copy
    SELECT * FROM table_original
    WHERE name = 'blah';
```
