SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%'
AND tb.startYear <= 1984
AND (tb.primaryTitle != 'Indiana Jones and the Temple of Doom' OR tb.startYear != 1984)
ORDER BY tr.averageRating DESC
LIMIT 5