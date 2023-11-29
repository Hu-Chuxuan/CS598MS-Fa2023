SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Comedy%' 
AND tb.startYear > 2012 
AND tb.tconst NOT IN ('tt0133093', 'tt0496069', 'tt5657846', 'tt1586680') 
ORDER BY tr.averageRating DESC, tb.numVotes DESC
LIMIT 10