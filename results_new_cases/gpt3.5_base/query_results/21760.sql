SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%'
AND tb.startYear <= 1999
AND tb.tconst NOT IN ('tt0117030', 'tt0115683', 'tt0116483')
ORDER BY tr.averageRating DESC
LIMIT 5