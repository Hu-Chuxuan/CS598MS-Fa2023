SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Thriller%' 
AND tb.startYear >= 2000 
AND tb.startYear <= 2010 
AND tb.primaryTitle != 'Chloe' 
ORDER BY tr.averageRating DESC, tr.numVotes DESC 
LIMIT 5