SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Will Ferrell' 
AND tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.primaryTitle NOT IN ('Jumanji (1995)', 'Finding Dory (2016)')
ORDER BY tb.averageRating DESC, tb.numVotes DESC
LIMIT 5