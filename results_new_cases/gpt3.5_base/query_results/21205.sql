SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear
FROM title_basics AS tb1
JOIN title_ratings AS tr1 ON tb1.tconst = tr1.tconst
JOIN title_principals AS tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics AS nb1 ON tp1.nconst = nb1.nconst
WHERE tb1.genres LIKE '%Comedy%'
AND tb1.startYear >= 2010
AND (tb1.primaryTitle != 'Girls Trip' OR tb1.primaryTitle != 'Game Night')
AND (tb1.primaryTitle NOT IN ('Titanic', 'Casino', 'The Godfather', 'Godfather'))
GROUP BY tb1.primaryTitle
ORDER BY tr1.averageRating DESC, tr1.numVotes DESC
LIMIT 5