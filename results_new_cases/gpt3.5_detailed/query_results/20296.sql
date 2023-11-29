SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Shallow Hal (2001)', 'The Holiday (2006)', "There's Something About Mary (1998)")
ORDER BY averageRating DESC
LIMIT 5