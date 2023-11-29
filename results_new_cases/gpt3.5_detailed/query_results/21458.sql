SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE 
    titleType = 'movie' 
    AND startYear > 2000 
    AND genres LIKE '%Comedy%'
    AND primaryTitle != 'The Master of Disguise'
    AND primaryTitle NOT IN ('John Wick', 'Taken', 'Taken 2')
ORDER BY averageRating DESC
LIMIT 5