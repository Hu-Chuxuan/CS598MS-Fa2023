SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (primaryTitle = 'Holes' AND startYear = 2003) 
    OR (primaryTitle = 'The Sandlot' AND startYear = 1993) 
    OR (primaryTitle = 'Moana' AND startYear = 2016)
    OR (primaryTitle = 'Sing' AND startYear = 2016)
    OR (primaryTitle = 'Paddington' AND startYear = 2014)
ORDER BY averageRating DESC