SELECT tb.primaryTitle AS Recommended_Movie
FROM title_basics tb
WHERE tb.genres LIKE '%Horror%'
ORDER BY tb.averageRating DESC
LIMIT 5