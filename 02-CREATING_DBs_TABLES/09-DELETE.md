# DELETE

To delete rows in a table, you use DELETE statement

```sql
    DELETE FROM table
    WHERE condition;
```

- First specify the table
- Then the row by using condition in the WHERE clause. if omit the WHERE clause all rows on the table will be deleted. 
- The DELETE statement will return the noumber of rows deleted.

EXAMPLES

```sql
    DELETE FROM table_name
    WHERE name LIKE 'C%'
    RETURNING column1, column2, ...;
```
