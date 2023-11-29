SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('The Interview (2014)', "There's Something About Mary (1998)")
AND genres LIKE '%Comedy%'
ORDER BY averageRating DESC
LIMIT 5