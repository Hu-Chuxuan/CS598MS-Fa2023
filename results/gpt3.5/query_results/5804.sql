SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle LIKE '%Silly%' OR tb.primaryTitle LIKE '%Cop%')
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0310281', 'tt0425112', 'tt0093409') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10