SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear = 2014
AND genres LIKE '%Comedy%'
AND primaryTitle != 'The Guest'
ORDER BY averageRating DESC
LIMIT 5