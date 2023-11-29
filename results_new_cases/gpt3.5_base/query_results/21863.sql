SELECT tb.primaryTitle AS Recommended_Movie, tb.startYear AS Release_Year, tb.genres AS Genre
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.genres LIKE '%Action%' 
AND tr.averageRating > 7
AND tb.primaryTitle NOT IN ('Rush Hour', 'The Transporter', 'Deadpool 2', 'Hot Fuzz', 'Tropic Thunder')
ORDER BY tr.averageRating DESC, tb.startYear ASC