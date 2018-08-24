# STRINGS OPERATORS 

Strings in this context include values of the types character, character varying, and text

More on [Strings operator functions](https://www.postgresql.org/docs/9.5/static/functions-string.html)


## SYNTAX EXAMPLES 


Concat first name and last name with an empty string (space) in between

```sql
    SELECT first_name || ' ' || last_name as concat_name
    FROM customer;

-- Finding the length of each name 

    SELECT first_name, char_length(first_name)
    FROM customer;

-- Return all the first name with upper case letters

    SELECT upper(first_name) 
    FROM customer;

-- You can also do turn all the letters to lower case

    SELECT upper(first_name), lower(last_name), char_length(first_name)
    FROM customer;
```

## EXPLORING REGULAR EXPRESSIONS

- A regular expression is a character sequence that is an abbreviated definition of a set of strings (a regular set). A string is said to match a regular expression if it is a member of the regular set described by the regular expression. As with LIKE, pattern characters match string characters exactly unless they are special characters in the regular expression language 

-  But regular expressions use different special characters than LIKE does. Unlike LIKE patterns, a regular expression is allowed to match anywhere within a string, unless the regular expression is explicitly anchored to the beginning or end of the string.


More on [Pattern Matching](https://www.postgresql.org/docs/9.5/static/functions-matching.html#FUNCTIONS-POSIX-TABLE)