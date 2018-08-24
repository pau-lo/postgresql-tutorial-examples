/* In the next lecture we will learn how to use CREATE TABLE.
Towards the end of the lecture we will show a more complex example, don't 
worry about fully understanding the last example, its just there to
 show you what we will cover in future lectures. You should only need to 
 understand the first two examples.

Here is the code used in the Create Table lecture:*/



CREATE TABLE account
(
  user_id serial PRIMARY KEY,
  username VARCHAR (50) UNIQUE NOT NULL,
  password VARCHAR (50) NOT NULL,
  email VARCHAR (355) UNIQUE NOT NULL,
  created_on TIMESTAMP NOT NULL,
  last_login TIMESTAMP
);


CREATE TABLE role
(
  role_id serial PRIMARY KEY,
  role_name VARCHAR (255) UNIQUE NOT NULL
);


/*Don't worry about fully understanding this last example yet!*/

CREATE TABLE account_role
(
  user_id integer NOT NULL,
  role_id integer NOT NULL,
  grant_date timestamp
  without time zone,
  PRIMARY KEY
  (user_id, role_id),
  CONSTRAINT account_role_role_id_fkey FOREIGN KEY
  (role_id)
      REFERENCES role
  (role_id) MATCH SIMPLE
      ON
  UPDATE NO ACTION ON
  DELETE NO ACTION,
  CONSTRAINT account_role_user_id_fkey
  FOREIGN KEY
  (user_id)
      REFERENCES account
  (user_id) MATCH SIMPLE
      ON
  UPDATE NO ACTION ON
  DELETE NO ACTION
);