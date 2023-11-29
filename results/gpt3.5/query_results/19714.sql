SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1985
AND tb.startYear <= 1990
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0094291', 'tt0095936', 'tt0098384')  -- Excluding user's historical preferences
ORDER BY tr.averageRating DESC
LIMIT 5