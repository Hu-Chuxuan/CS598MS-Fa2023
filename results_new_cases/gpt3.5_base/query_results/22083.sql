SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics AS tb1
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'Say Anything...'
AND tb2.startYear = 1989
AND tb1.titleType = 'movie'
AND tb1.primaryTitle NOT IN ('Zack and Miri Make a Porno (2008)', 'Superbad (2007)', 'Knocked Up (2007)', 'Drive (2011)')
AND tb1.startYear >= 1980
AND tb1.genres LIKE '%Comedy%'
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5