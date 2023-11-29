SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear AS Release_Year, tb.genres AS Genre
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%' 
AND tb.startYear < 2006
AND tr.averageRating >= 7.5 
AND tr.numVotes > 100000
AND tb.primaryTitle NOT IN ('Pan\'s Labyrinth (2006)', 'Argo (2012)', 'Kingsman: The Secret Service (2014)')
ORDER BY tr.averageRating DESC
LIMIT 5