SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2005
AND genres LIKE '%Drama%'
AND primaryTitle NOT IN ('Sex and Lucia (2001)', 'The Pianist  (2002)', 'The Shawshank Redemption (1994)')
ORDER BY averageRating DESC
LIMIT 5