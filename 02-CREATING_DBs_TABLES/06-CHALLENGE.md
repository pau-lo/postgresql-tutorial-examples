# CREATE A TABLE CHALLENGE 

Create a table to organize our potential leads! We will have the following information:

A customer's first name, last name, email, sign-up date, and number of minutes spent on the dvd rental site. You should also have some sort of id tracker for them. You have free reign on how you want to create this table, the next lecture will show one possible implementation of this.

Have fun and feel free to ask any discussion questions if you're confused!

Remember, we're just focused on the basics of creating a table right now!


# Solution

```sql
    CREATE TABLE leads (
    user_id serial PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(355) UNIQUE NOT NULL,
    login_time integer,
    sign_up_date TIMESTAMP NOT NULL
    );
```