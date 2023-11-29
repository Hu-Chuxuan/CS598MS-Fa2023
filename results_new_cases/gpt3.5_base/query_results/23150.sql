SELECT tb2.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb1.primaryTitle = 'The Purge (2013)'
AND tb2.primaryTitle NOT IN ('The Purge (2013)', 'Hereditary (2018)')
AND tb2.titleType = 'movie'
ORDER BY tb2.numVotes DESC
LIMIT 1