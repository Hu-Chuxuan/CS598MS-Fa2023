SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Christopher Walken'
AND tb.titleType = 'movie'
AND tb.startYear >= 2016
AND tb.averageRating >= 7
AND tb.numVotes >= 1000
AND tb.tconst NOT IN ('tt0451279', 'tt0974015', 'tt1124035')
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5