SELECT DISTINCT tb.* FROM (SELECT * from title_basic) as tb INNER JOIN (SELECT * from title_rating) as tr WHERE tr.title = tb.title AND ((tr.averageRatig > 6 OR tr.numvoters < 20))AND(tb.primaryTitle LIKE 'classic%' OR b.originalTitle like 'classic%')

Output Results: 
[Movie Title, Movie Year of Release, Genre]

### Part C - 78 Points
In your solution to part B above, if there are multiple matches between user inputs and preference history then return all of them in an array.

### Part D - 92 points
Create two different SQL queries which will produce different results when run against the same data set. In one case, use the UNION ALL operator