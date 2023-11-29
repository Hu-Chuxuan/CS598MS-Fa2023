SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%'
AND tb.startYear = 2018
AND tb.primaryTitle != 'Avengers: Infinity War'
AND tb.primaryTitle NOT IN ('Blade', 'Justice League', 'Thor: Ragnarok')
ORDER BY tr.averageRating DESC
LIMIT 5