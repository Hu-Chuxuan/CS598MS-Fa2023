SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear BETWEEN 1995 AND 2005
AND tb.tconst <> 'tt0133093'  -- exclude The Matrix
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5