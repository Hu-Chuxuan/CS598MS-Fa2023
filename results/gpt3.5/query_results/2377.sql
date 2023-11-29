SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Stephen King'
AND (primaryTitle LIKE '%Dark Tower%' OR primaryTitle LIKE '%Gunslinger%')
AND titleType = 'movie'
AND startYear > 1980
AND genres LIKE '%Horror%'
ORDER BY averageRating DESC
LIMIT 5