SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.genres LIKE '%Romance%'
AND title_basics.startYear > 1990
AND title_basics.startYear < 2005
AND title_basics.tconst NOT IN ('tt0147800', 'tt0115616', 'tt0147800', 'tt0063442')
ORDER BY averageRating DESC
LIMIT 5