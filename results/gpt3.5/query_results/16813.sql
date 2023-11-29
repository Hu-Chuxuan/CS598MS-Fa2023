SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName IN ('Idris Elba', 'Richard Madden')
AND primaryTitle != 'The Take'
AND titleType = 'movie'
AND startYear > 2000
AND genres LIKE '%Action%'
AND genres LIKE '%Thriller%'
ORDER BY averageRating DESC
LIMIT 3