SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr1 ON tb1.tconst = tr1.tconst
JOIN title_principals tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics nb1 ON tp1.nconst = nb1.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear = 2018
AND tb1.genres LIKE '%Animation%'
AND tb1.genres LIKE '%Adventure%'
AND tb1.genres LIKE '%Comedy%'
AND tb1.primaryTitle != 'Peter Rabbit'
AND nb1.primaryName = 'James Corden'
AND tr1.averageRating > 7
AND tr1.numVotes > 500
AND tb1.tconst NOT IN ('tt2294629', 'tt1411704', 'tt0398286', 'tt0398286')