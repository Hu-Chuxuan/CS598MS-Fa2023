SELECT statement so you don’t get all movies but just those which satisfy user preference history criteria along with other required information.

Hint#2 : Join table tconst & tconst to extract the number of times each movie has been watched by people as well as total votes received by each movie from its viewers respectively.
```sql
SELECT * FROM title_ratings AS r INNER JOIN title_principals AS p ON r.titleId = p.titleID