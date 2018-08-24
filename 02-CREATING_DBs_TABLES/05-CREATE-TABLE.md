# CREATE TABLE

Using the sql editor and the sql commands

    CREATE TABLE table_name
    (column_name TYPE column_constraint, table_constraint)
    INHERITS existing_table_name;

## PostgreSQL Column Constraints 

- Not Null
    - The value of the column cannot be null
- UNIQUE
    - The value of the column must be uniqe across the whole table
- Primary Key
    - This constraint is the combination of NOT NULL and UNIQUE constraints
- Check
    - It enables to check a condition when you insert or update data
- References
    - It constrains the value of the column that exists in a column in another table

However, the column can have many NULL values because PostgreSQL treats each NULL value to be unique

SQL standard only allows one NULL value in the column that has the UNIQUE constraint.

You can define one column a PRIMARY KEY by using column-level constraint.  In case the primary key contains multiple columns, you must use the table-level constraint

## Table Constraints

Similar to column constraints except that they are applied to the entire table

- UNIQUE (column_list)
    - to force the value stroed in the columns listed inside the parentheses t obe unique
- PRIMARY KEY (column_list)
    - to define the primary key that consists of multiple columns.
- CHECK (condition)
    - to check a condition when inserting or updating data
- REFERNCES
    - to constrain the value stored in the column that must exist in a column in another table

# CREATING TABLE SYNTAX

```sql
    CREATE TABLE account (
    user_id serial PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(355) UNIQUE NOT NULL,
    create_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP);
```

### CREATING A COPY OF OTHER TABLE

```sql
    CREATE TABLE account_copy(LIKE account);
```

It does not copies the data but it does copies the schema