# Overview of Python and PostgreSQL Sections

We will be using the psycopg2 library with Python to interact with a database in PostgreSQL

Connectiong to postrgreSQL from python

```python
import psycog2 as pg2

secret = 'xxxxxxxx'
conn = pg2.connect(database='DVD_rentals', user='postgres', password=secret)
cur = conn.cursor()
```

Example of selecting a table and manipulating data

```python 
# Executing from the table
cur.execute('SELECT * FROM payment')

# fetch one row result from the data
cur.fetchone()

# fetch many results: up to 10 rows of data
cur.fetchmany(10)

# or you can call it dtat 
data = cur.fetchmany(10)

# unpack it 
data[0]

data[1][4]
```

Closing the connection

```python
conn.close()
```

