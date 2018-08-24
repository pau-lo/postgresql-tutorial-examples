# CHECK CONSTRAINTS

- A CHECK constraint is a kind of constraint that allows you to specify if a value in a column must meet a specific requirement

- The CHECK constraint uses a Boolean expression to evaluate the values of a column.

- If the values of the column pass the check, PostgreSQL will insert or update those values

## SYNTAX EXAMPLE 

```sql
SELECT * from information_schema.table_constraints 
WHERE table_name='myTable';
```
