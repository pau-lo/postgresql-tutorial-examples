# FULL OUTER JOIN 

Full outer join produces the set of all records in Table A and Table B, with matching records from both sides where available. If there is no match, the missing side will contain null.

- The FULL OUTER JOIN keyword return all records when there is a match in either left (table 1) or right (table 2) table records.

## INNER JOIN SYNTAX 

```sql
    SELECT column_name(s)
    FROM table_1
    FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
```

## EXAMPLES 

- To produce the set of records unique to Table A and Table B, we perform the same full outer join, then exclude the records we don't want from both sides via a where clause. 

```sql
        SELECT * FROM TableA
        FULL OUTER JOIN tableB
        ON TableA.name = TableB.name
        WHERE tableA.id IS null
        OR Table.B IS null
```