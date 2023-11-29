SELECT primaryName
FROM name_basics
JOIN title_principals ON name_basics.nconst = title_principals.nconst
JOIN title_basics ON title_principals.tconst = title_basics.tconst
WHERE primaryTitle = 'The Shape of Water'
AND titleType = 'movie'
AND startYear = 2017
AND category = 'actor'
AND primaryName NOT IN ('Will Smith', 'Kate Hudson', 'Matthew McConaughey')
ORDER BY ordering
LIMIT 3