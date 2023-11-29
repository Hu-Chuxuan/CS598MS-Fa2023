SELECT * FROM title_basics
WHERE genre = 'Horror'
AND (
    (titleType ='movie' AND startYear > 2000)
    OR (titleType = 'tvseries' AND startYear > 2000 AND endYear <= 2022)
)
AND (
    (primaryTitle LIKE '%Carrie%' AND startYear = 2013)
    OR (primaryTitle LIKE '%Carrie%' AND startYear = 1976)
    OR (primaryTitle LIKE '%The Shining%' AND startYear = 1980)
    OR (primaryTitle LIKE '%Thinner%' AND startYear = 1996)
)
ORDER BY averageRating DESC, numVotes DESC