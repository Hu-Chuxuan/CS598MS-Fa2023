SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tb.startYear AS release_year
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Adventure%'
AND tb.primaryTitle LIKE '%Robin Hood%'
AND tb.startYear = 1973
ORDER BY tr.averageRating DESC
LIMIT 5