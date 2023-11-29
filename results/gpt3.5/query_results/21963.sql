SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Musical%'
AND tb.tconst <> 'tt1457767' 
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5