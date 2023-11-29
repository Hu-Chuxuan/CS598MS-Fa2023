SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%'
AND tb.startYear > 2010
AND tr.averageRating > 7
AND tb.primaryTitle != 'The Boss Baby'
AND tb.primaryTitle NOT IN ('Casino', 'Training Day', 'Scarface', 'Goodfellas')
LIMIT 5