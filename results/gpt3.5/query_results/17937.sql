SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear <= 2017
AND startYear >= 1990
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('The Fugitive', 'Star Wars: Episode VIII – The Last Jedi', 'Deadpool', 'Mission: Impossible')
ORDER BY averageRating DESC
LIMIT 5