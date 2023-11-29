SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1980
AND tb.startYear <= 1989
AND tb.primaryTitle NOT IN ('Lethal Weapon', 'Forever Young', 'Mad Max')
ORDER BY tr.averageRating DESC
LIMIT 5