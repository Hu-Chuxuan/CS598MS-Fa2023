SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.startYear <= 2021
AND tb.primaryTitle NOT IN ('Superbad', 'Airplane!')
ORDER BY tr.averageRating DESC
LIMIT 5