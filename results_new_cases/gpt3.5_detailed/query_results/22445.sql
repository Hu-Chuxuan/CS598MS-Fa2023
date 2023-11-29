SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND (primaryTitle LIKE '%How High%' OR primaryTitle LIKE '%Pineapple Express%')
AND primaryTitle NOT IN ('Donnie Darko (2001)', 'Deadpool  (2016)')
ORDER BY averageRating DESC
LIMIT 5