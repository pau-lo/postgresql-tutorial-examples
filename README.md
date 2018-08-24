More about SQL 

 https://www.w3schools.com/sql/



/* Creating a database */

/* where name it's the name of the database name */

CREATE DATABASE name;  


/* Deleting a database */

Delete DATABASE name;


# Overview 

Restoring a database but only the Table Schema

 -  This is the table names and data types only, no actual data
 - Very common task in a real world situation.  To avoid copying private information

steps in PostgreSQL

 - restore and find restore option number 1 and choose only schema.

 Restoring table schema for an existing database

 - same process but choose restore option number 2 choose clean before restore.

 