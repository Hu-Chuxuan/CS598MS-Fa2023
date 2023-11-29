SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
    (genres LIKE '%Comedy%' OR genres LIKE '%Romance%')
    AND titleType = 'movie'
    AND startYear BETWEEN 2000 AND 2010
    AND primaryTitle != 'The Holiday'
    AND primaryTitle != 'Just Like Heaven'
ORDER BY averageRating DESC
LIMIT 5