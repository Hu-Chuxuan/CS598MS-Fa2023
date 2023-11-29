SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND (tb.primaryTitle = 'Inception' OR tb.primaryTitle = 'The Matrix' OR tb.primaryTitle = 'About Time')
AND tb.primaryTitle NOT IN ('Inception', 'The Matrix', 'About Time', 'Aliens')
ORDER BY tr.averageRating DESC
LIMIT 5