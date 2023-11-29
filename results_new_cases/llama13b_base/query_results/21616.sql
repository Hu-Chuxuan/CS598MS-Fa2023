SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.title = 'Rain Man' AND t2.averageRating > 8
AND t1.genres LIKE '%Drama%'
AND t1.startYear BETWEEN 1980 AND 1990
AND t1.runtimeMinutes BETWEEN 90 AND 120