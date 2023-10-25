SELECT statement inside its own SELECT statement. To achieve this, we will use the "SELECT" keyword followed by the table name then parentheses around our subselect expression within which we can reference fields from other tables. For example:
```sql
SELECT * FROM titles WHERE rating > (SELECT avg(rating) FROM ratings)