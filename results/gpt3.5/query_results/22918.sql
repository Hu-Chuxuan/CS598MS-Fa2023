SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Sci-Fi%'
AND tb.startYear >= 1979
AND tb.tconst NOT IN ('tt0078748', 'tt0083658')
ORDER BY tr.averageRating DESC
LIMIT 5