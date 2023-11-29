SELECT primaryTitle, averageRating, numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE title_basics.genres LIKE '%Action%'
AND name_basics.primaryName LIKE '%Jackie Chan%'
AND title_basics.startYear >= 1988
AND title_basics.startYear < 2000
AND title_basics.titleType = 'movie'
AND title_basics.primaryTitle != 'Johnny Be Good (1988)'
AND title_basics.primaryTitle != 'Romeo Must Die (2000)'
GROUP BY title_basics.tconst
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5