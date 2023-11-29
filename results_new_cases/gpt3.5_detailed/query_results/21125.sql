SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2000 
AND genres LIKE '%Comedy%'
AND titleType = 'movie'
AND primaryTitle NOT IN ('La La Land', 'Hairspray', 'Dreamgirls')
ORDER BY averageRating DESC
LIMIT 5