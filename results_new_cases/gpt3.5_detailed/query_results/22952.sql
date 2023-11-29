SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%Comedy%' 
AND tb.startYear > 2012
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10