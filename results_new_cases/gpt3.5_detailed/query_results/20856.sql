SELECT primaryTitle, averageRating, genres
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.primaryTitle != 'Get Out'
AND genres IN (SELECT genres FROM title_basics WHERE primaryTitle = 'Get Out')
ORDER BY averageRating DESC
LIMIT 5