SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2023
AND tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('Seven', 'Wind River')
ORDER BY tr.averageRating DESC
LIMIT 5