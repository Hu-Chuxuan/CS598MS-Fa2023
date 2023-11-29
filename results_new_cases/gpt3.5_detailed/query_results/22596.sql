SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Documentary%'
AND tb.genres LIKE '%Music%'
AND tb.startYear > 1986
ORDER BY tr.averageRating DESC
LIMIT 5