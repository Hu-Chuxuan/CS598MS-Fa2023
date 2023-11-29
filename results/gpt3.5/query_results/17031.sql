SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0975645', 'tt8085790', 'tt3416742')
ORDER BY tr.averageRating DESC, tb.numVotes DESC
LIMIT 10