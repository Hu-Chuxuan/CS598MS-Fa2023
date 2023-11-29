SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND startYear >= 1990
AND primaryTitle NOT IN ('The Sixth Sense', 'Concussion', 'Jerry Maguire', 'Far and Away')
AND genres LIKE '%Drama%'
ORDER BY averageRating DESC, startYear DESC
LIMIT 5