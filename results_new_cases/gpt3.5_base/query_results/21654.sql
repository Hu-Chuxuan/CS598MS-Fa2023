SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating >= 7.5
AND tb.primaryTitle NOT IN ('Meet the Parents (2000)')
ORDER BY tr.numVotes DESC
LIMIT 5