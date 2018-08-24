# DATA TYPES

- We need to specify what kind of data type a colunn should have when we are creating tables 

- PostgreSQL supports the following data types:

    - Boolean
    - Character
    - Number
    - Temporal (i.e., date and time-related data types)
    - Special Types
    - Array

### Boolean

A boolean data type can hold one of two possible values: **True or False**
In case the value is unknown, the NULL value is used.

You use boolean or bool keyword when you declare a column that has Boolean data type.

### Character

A single character: **char**

Fixed-lenth cahrater strings;  **char(n)**

If you insert a string that is shorter than the length of the column, PostgreSQL will pad spaces.  If you insert a string taht is longer tahn the length of the column, PostgreSQL will issue an error.

Variable-length character strings: **varchar(n)**

You can store to n characters with variable-length character strings.

### Number

There are two types of numbers:

- Integers:

    - Small integer (smallint) is 2-byte signed integer that has a range of (-32768, 32767)
    - Integer (int) is 4-byte integer that as a range of (-214783648, 214783647)
    - Serial is the same as interger except that PostgreSQL populate value into the column automatically (similar to auto_increment in other databases)

- Floating-point numbers

    - float(n) is a floating-point number whose precison, at least, n up to a maximum of 8 bytes
    - real or float8 is a double-precision (8-byte) floating-point number
    - numeric or numeric(p,s) is a real number with p digits with s number after the decimal point.  The numeric (p, ) is the exact number

### Temporal

Temporal data types store date and time-related data

- date
    - stores date data
- time
    - stores time data
- timestamp
    - stores date and time
- interval
    - stores the difference in timestamps
- timestamptz
    - store both timestamp and timezone data

