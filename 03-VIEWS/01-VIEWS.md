# VIEWS 

- A view is a database object that is of a stored query.

- A view can be accessible as a virtual table in PostgreSQL

- Is a logical table that represents data of one orm ore udnerlying tables through a SELECT statement

A view is a database object that is of a stored query it doest not stores data physically. 

A view helps simplify the complexity of a query because you can query a view, which is based on a complex query, using a simple **SELECT** statement

Like a table you can grant permission to users through a view that contains specific data that users are authorized to see

A view provides a consistent layer even the columns of underliyng table changes 

## SYNTAX EXAMPLE

```sql
    CREATE VIEW view_name AS query;

    A real example would be:

    CREATE VIEW customer_info AS
    SELECT first_name, last_name, email, address, phone
    FROM customer
    JOIN address
    ON customer.address_id = address.address_id;

    And now we can choose All of it as a view:

    SELECT * FROM customer_info;
```

## ALTER VIEW and RENAME TO

Syntax Example:

```sql
    ALTER VIEW name_view RENAME TO new_name:

-- The alter view allows you to just rename the view

    ALTER VIEW customer_info 
    RENAME TO customer_master_list;

-- And now we can view 

    SELECT * FROM customer_master_list;

-- DROP VIEW

-- In order to remove a VIEW we can just deleted

    DROP VIEW name_view;
``` 