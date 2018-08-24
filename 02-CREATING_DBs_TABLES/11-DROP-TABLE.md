# DROP-TABLE

Removing exisiting table from the database by using DROP TABLE statement


# SYNTAX 

```sql
    DROP TABLE [IF EXITS] table_name

-- Examples

    DROP TABLE test;

    OR 

    DROP TABLE IF EXISTS test RESTRICT;
```
If there is any object dependent RESTRICT will stop from dropping any table to avoid this you can put CASCADE.
