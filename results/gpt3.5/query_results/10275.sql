SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT tb.genres LIKE '%Horror%'
AND tb.startYear <= 2013
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Little Nicky (2000)', 'The Notebook (2013)')
ORDER BY tr.averageRating DESC
LIMIT 5