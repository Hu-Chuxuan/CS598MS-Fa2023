SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres LIKE '%Comedy%' OR tb1.genres LIKE '%Animation%'
WHERE tb2.primaryTitle IN ('Frozen (2013)', 'Never Let Me Go (2010)', 'Frozen (2010)')
AND tb1.tconst != tb2.tconst
AND tb1.titleType = 'movie'
AND tb1.startYear >= 2010
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5