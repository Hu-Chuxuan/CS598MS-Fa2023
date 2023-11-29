SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Scooby-Doo on Zombie Island (1998)', 'Moana  (2016)', 'High School Musical ', 'High School Musical 2', 'Scooby-Doo  (2002)', 'Scooby-Doo ')
AND genres LIKE '%Musical%'
ORDER BY averageRating DESC
LIMIT 5