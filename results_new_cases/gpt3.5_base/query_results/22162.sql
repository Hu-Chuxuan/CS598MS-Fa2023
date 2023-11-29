SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.genres LIKE '%Fantasy%'
AND tb.genres LIKE '%Family%'
AND tb.startYear >= 2000
AND tb.startYear <= 2022
AND tb.primaryTitle != 'Freaky Friday'
AND (tb.primaryTitle NOT IN ('Halloween', 'A Nightmare on Elm Street'))
ORDER BY tr.averageRating DESC
LIMIT 5