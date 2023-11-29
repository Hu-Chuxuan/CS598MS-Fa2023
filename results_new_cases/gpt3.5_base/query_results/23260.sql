SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%' 
AND tb.startYear >= 1990 
AND tb.startYear <= 2000 
AND tb.primaryTitle != 'Seven (1995)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5