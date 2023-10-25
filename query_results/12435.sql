SELECT * FROM
    (title_ratings t,
     (SELECT DISTINCT(director) AS director FROM title_crew WHERE title_crews.movie = t.movie)) d,
     (SELECT DISTINCT(writer) AS writer FROM title_crew WHERE title_crews.movie = t.movie),
     (SELECT DISTINCT(character) AS character FROM title_principals WHERE title_principals.job = 'actor') c,
     (SELECT DISTINCT(category) as category FROM title_principals WHERE title_principals.job IN ('actress', 'producer')) f,
     ((SELECT COUNT(*) AS votes FROM rating WHERE titleID=t.id AND userID=?) AS numVotes,
      (SELECT AVG((rating)) AS avgRating FROM rating WHERE titleID=t.id AND userID=?) AS averageRating,
       (SELECT SUM((rating)) AS totalRatings FROM rating WHERE titleID=t.id AND userID=?) AS totalRatings,
        (SELECT SUM((rating))/COUNT(*)-0.98765432 AS normalizedAverageRating FROM rating WHERE titleID=t.id AND userID=?) AS normalizedAvgRating,
         (SELECT CONCAT('http://www.imdb.com/find?,title=', titleID )AS urlFromMovieId,
          (SELECT CONCAT('http://www.imdb.com/?ref=tt', titleID,'&q=', category) AS urlFromCategory)AS urlFromCategories,
           (SELECT CONCAT('http://www.imdb.com/search', titleID) AS urlFromSearchTerm)FROM title_principals WHERE title_principals.job IN ('actor','producer'),
            titleID=(SELECT titleID from title_ratings where userID=?) AS id FROM title_ratings WHERE userID=?) AS r)
GROUP BY category, averageRating HAVING numberOfRows() > 0 ORDER BY averageRating DESC LIMIT?