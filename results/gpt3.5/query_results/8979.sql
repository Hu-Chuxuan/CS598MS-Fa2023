SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%'
AND tb.titleType = 'movie'
AND tr.averageRating > 8
ORDER BY tr.averageRating DESC
LIMIT 10