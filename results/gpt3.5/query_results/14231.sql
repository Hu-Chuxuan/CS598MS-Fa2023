SELECT primaryTitle 
FROM title_basics 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN name_basics ON title_principals.nconst = name_basics.nconst 
WHERE primaryName = 'Michonne' 
AND title_basics.tconst != 'tt1825683'
AND titleType = 'movie'
AND startYear > 2018
ORDER BY numVotes DESC
LIMIT 5