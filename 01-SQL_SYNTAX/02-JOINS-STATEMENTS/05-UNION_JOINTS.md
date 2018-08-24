# UNION

The UNION operator is used to combine the result-set of two or more SELECT statements.

- Each SELECT statement within UNION must have the same number of columns
- The columns must also have similar data types
- The columns in each SELECT statement must also be in the same order

## Union Syntax

- The UNION operator combines result sets of two or more SELECT statements into a single result set

```sql
        SELECT column_name(s) FROM table1
        UNION
        SELECT column_name(s) FROM table2;
```

- The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:

```sql
        SELECT column_name(s) FROM table1
        UNION ALL
        SELECT column_name(s) FROM table2;
```

When can you use a UNION STATEMENT

- The UNION operator removes all duplicate rows unless the UNION ALL is used

- May place the rows in the first query before, after or between the rows in the result set of the second query

- To sort the rows in the combined result set by a specified column, you use the ORDER BY clause

We often use the UNION operator to combine data from similar tables that are not perfectly normalize

Those data are ofte found in the reporting or data warehouse system

Union will delete duplicate rows.  To prevent this from happening you use an ALL UNION clause. 
