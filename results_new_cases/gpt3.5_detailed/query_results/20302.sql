SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Adventure%'
AND primaryTitle NOT IN ('Black Panther (2018)', 'Jurassic Park', 'Raiders of the Lost Ark (1981)')
ORDER BY averageRating DESC
LIMIT 10