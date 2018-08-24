# PRIMARY KEYS

- Keys
    - A primary key is a column or a group of columns that is used to identify a row uniquely in a table.

    - You define primary keys through primary key constraints. 

- A table can have one and only one primary key
- It is a good practice to add a primary key to every table
- When you add a primary key to a table, PostgreSQL creates a unique index on the column or a group of columns used to define the primary key

## Adding Primary Keys

- We add the primary key to a table when we define the table's structure

using **CREATE TABLE** statement:

```sql
      CREATE TABLE table_name(
      column_name data_type PRIMARY KEY,
      column_name data_type, ...);
```

## Foreing Keys

- A foreign key is a field or group of fields in a table that uniquely identifies a row in another table

- In other words, a foreing key is defined in a table that refers to the *primary key* of the other table

The table that contains the foreign key is called *referencing* table or *child table*.  And the table to which the foreing key refernces is called *referenced table* or *parent table*.

A table can have multiple foreing keys depending on its relationships with other tables.

- In PostgreSQL we define a foreign key through a foreign key constraint

- A foreign key constraint indicates that values in a column or a group of columns in the child table match with the values in a column or a group of columns of the parent table

- A foreign key constraint maintains referential integrity between child and parent tables

In general, a foreing key is a field or group of fields in a table that uniquely identifies a row in another table
