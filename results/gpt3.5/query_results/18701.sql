SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE genres LIKE '%Action%' 
AND primaryName = 'Bruce Lee'
AND primaryTitle NOT IN ('A Good Day to Die Hard (2013)', 'Die Hard (1988)', 'Die Hard 2 (1990)', 'Live Free or Die Hard (2007)', 'Taken  (2008)')
ORDER BY averageRating DESC
LIMIT 10