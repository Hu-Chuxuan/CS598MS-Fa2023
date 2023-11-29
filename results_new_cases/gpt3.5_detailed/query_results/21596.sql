SELECT tb.primaryTitle AS Recommended_Movie, tr.averageRating AS Rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%'
AND tb.titleType = 'movie'
AND tb.startYear <= 2005
AND tb.tconst NOT IN ('tt0110912', 'tt0266697')
ORDER BY tr.averageRating DESC
LIMIT 5