SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Animation%'
AND tb.primaryTitle NOT IN ('Mulan (1998)', 'Frozen (2013)', 'Brave (2012)', 'Moana (2016)', 'The Princess and the Frog')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5