SELECT * FROM title WHERE ttype = 'Movie' AND isAdult!= 1 OR ttype IS NULL ORDER BY avgrat DESC LIMIT 5 OFFSET? 

### Example #2: Movie Recommendation System

The next example shows how you could use the SQL Query Generator to create an advanced SQL query that uses joins between multiple tables. This time we will generate queries for a recommender system similar to Netflix's. We have two datasets consisting of the IMDB database and the Rotten Tomatoes database