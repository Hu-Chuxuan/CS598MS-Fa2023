SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Tom Cruise'
AND title_basics.titleType = 'movie'
AND primaryTitle NOT IN ('This Means War (2012)', '300 (2007)', 'Knight and Day (2010)', 'Date Night (2010)')
ORDER BY averageRating DESC
LIMIT 5