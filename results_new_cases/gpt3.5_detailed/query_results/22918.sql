SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%'
AND tb.startYear >= 1980
AND tb.primaryTitle != 'Indiana Jones and the Temple of Doom'
AND tb.primaryTitle NOT IN ('Blade Runner', 'Alien')
ORDER BY tr.averageRating DESC
LIMIT 5