SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Uncle Buck'
AND tb1.titleType = 'movie'
AND tb1.startYear >= 1990
AND tb1.genres LIKE '%Comedy%'
AND tb1.primaryTitle NOT IN ('The Avengers  (2012)', 'X-Men  (2000)', 'The Wolverine  (2013)')
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5