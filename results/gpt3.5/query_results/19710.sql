SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2012
AND genres LIKE '%Drama%'
AND primaryTitle NOT IN ('Gangs of New York (2002)', 'The Great Gatsby  (2013)', 'Amadeus  (1984)', 'Titanic (2012)')
ORDER BY averageRating DESC
LIMIT 5