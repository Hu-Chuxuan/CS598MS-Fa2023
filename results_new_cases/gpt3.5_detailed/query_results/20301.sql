SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Gangster%'
AND tb.primaryTitle NOT IN ('Casino (1995)', 'Goodfellas (1990)', 'Godfather (1991)')
ORDER BY tr.averageRating DESC
LIMIT 5