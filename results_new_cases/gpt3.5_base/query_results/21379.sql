SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 1960
AND tb.genres LIKE '%Romance%'
AND tb.genres NOT LIKE '%Action%'
AND tb.genres NOT LIKE '%Thriller%'
AND tb.genres NOT LIKE '%Horror%'
ORDER BY tr.averageRating DESC
LIMIT 5