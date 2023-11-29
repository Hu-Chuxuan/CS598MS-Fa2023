SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr1.averageRating AS rating
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_crew AS tc1 ON tb1.tconst = tc1.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN title_basics AS tb2 ON tb2.primaryTitle = 'Juno' AND tb2.startYear = 2007
WHERE tb1.genres = tb2.genres
AND tb1.tconst != tb2.tconst
AND tc1.directors = (SELECT directors FROM title_crew WHERE tconst = tb2.tconst)
AND tr1.numVotes > (SELECT MAX(numVotes) * 0.5 FROM title_ratings)
GROUP BY tb1.primaryTitle, tb1.startYear, tr1.averageRating
ORDER BY tr1.averageRating DESC
LIMIT 5