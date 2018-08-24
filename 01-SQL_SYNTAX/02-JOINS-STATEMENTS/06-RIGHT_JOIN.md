#  SQL RIGHT JOIN Keyword

The RIGHT JOIN keyword returns all records from the right table (table 2), and the matched records from the left table (table 1). The result is NULL from the left side, when there is no match.

## RIGHT JOIN Syntax

```sql
    SELECT column_name(s)
    FROM table1
    RIGHT JOIN table2 ON table1.column_name = table2.column_name;
```
