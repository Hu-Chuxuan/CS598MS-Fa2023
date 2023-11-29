SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1990
AND startYear <= 2010
AND primaryTitle NOT LIKE '%You Don't Mess with the Zohan%'
AND (
    genres LIKE '%Comedy%' OR
    genres LIKE '%Romance%' OR
    genres LIKE '%Drama%'
)
AND (primaryTitle LIKE '%American Pie%' OR primaryTitle LIKE '%Scary Movie%')
AND primaryTitle NOT IN ('Click  (2010)', 'American Pie  (1999)', 'Scary Movie (2000)')
ORDER BY averageRating DESC
LIMIT 5