SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear > 2010
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('Avengers: Infinity War (2018)', 'Planet of the Apes  (1968)')
ORDER BY tr.numVotes DESC
LIMIT 5