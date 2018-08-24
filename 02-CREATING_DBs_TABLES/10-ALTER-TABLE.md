# ALTER TABLE

To change existing table structure we can use the ALTER TABLE statement.

SYNTAX EXAMPLE 

    ALTER TABLE table_name action;

- PostgreSQL provides many actions that allow you to:
    - Add, remove, or rename columns
    - Set default value for the column
    - Add CHECK constraint to a column
    - Rename table

### KEYWORDS

- ADD COLUMN
- DROP COLUMN
- RENAME COLUMN
- ADD CONSTRAINT 
- RENAME TO

## EXAMPLES 

```sql
    DROP TABLE IF EXISTS link;

    ALTER TABLE link
    ADD COLUMN active boolean;

    ALTER TABLE link
    RENAME COLUMN title TO new_title_name;

    ALTER TABLE link RENAME TO url_table;
``` 