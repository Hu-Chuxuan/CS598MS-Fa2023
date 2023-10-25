SELECT t1.* FROM ((title_rating AS t1 INNER JOIN title_crew AS t2 ON t1.id = t2.movieId)) WHERE ((((t1.averageRating >= :userInput AND t1.numVotes <= 10))) OR (((t1.averageRating < :userInput AND t1.numVotes > 10)))) ORDER BY rating DESC LIMIT 6