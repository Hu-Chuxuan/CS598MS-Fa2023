SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.titleType = 'movie' 
AND tb.startYear <= 2022 
AND tr.numVotes >= 10000 
AND tb.genres LIKE '%Romance%' 
AND tb.tconst NOT IN ('tt0407887', 'tt0099685') 
ORDER BY tr.averageRating DESC 
LIMIT 10