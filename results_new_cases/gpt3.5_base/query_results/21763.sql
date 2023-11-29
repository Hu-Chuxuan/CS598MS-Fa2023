SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Fantasy%'
AND primaryTitle != 'The Lord of the Rings: The Return of the King (2003)'
AND primaryTitle IN ('Superbad (2007)', 'The Usual Suspects (1995)', 'Sherlock Holmes (2010)', 'Seven (1995)')
ORDER BY averageRating DESC
LIMIT 5