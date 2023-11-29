SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Fantasy%'
AND tb.startYear >= 2010
AND tb.isAdult = 0
AND tb.primaryTitle NOT IN ('Jurassic Park', 'The Adventures of Tintin  (2011)', 'Jurassic Park  (1993)', 'Back to the Future (1985)', 'Indiana Jones and the Last Crusade (1989)')
ORDER BY tr.averageRating DESC
LIMIT 5