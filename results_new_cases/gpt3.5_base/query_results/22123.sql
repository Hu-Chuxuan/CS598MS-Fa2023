SELECT tb1.primaryTitle 
FROM title_principals tp1
JOIN name_basics nb ON tp1.nconst = nb.nconst
JOIN title_basics tb1 ON tp1.tconst = tb1.tconst
WHERE nb.primaryName = 'Christopher Walken'
AND tb1.titleType = 'movie'
AND tb1.startYear <= 2017
AND tb1.tconst NOT IN ('tt0451279', 'tt0974015', 'tt2975590')
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC
LIMIT 5