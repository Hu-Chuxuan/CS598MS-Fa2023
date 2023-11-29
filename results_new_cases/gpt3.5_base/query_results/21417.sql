SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName LIKE '%Wayans Brothers%'
AND title_basics.titleType = 'movie'
AND averageRating >= 7
AND primaryTitle NOT IN ('Star Wars  (1977)')
ORDER BY averageRating DESC
LIMIT 10