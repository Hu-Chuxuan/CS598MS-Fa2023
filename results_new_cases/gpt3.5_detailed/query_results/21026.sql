SELECT tb.tconst, tb.primaryTitle, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
ORDER BY tr.averageRating DESC
LIMIT 10