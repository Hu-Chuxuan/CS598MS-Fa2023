SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr1 ON tb1.tconst = tr1.tconst
JOIN title_crew tc1 ON tb1.tconst = tc1.tconst
JOIN title_principals tp1 ON tb1.tconst = tp1.tconst
JOIN name_basics nb1 ON tp1.nconst = nb1.nconst
WHERE tb1.startYear = 1995
AND tb1.titleType = 'movie'
AND tr1.averageRating > 7
AND nb1.primaryName = 'Powder'
AND tb1.tconst NOT IN ('tt0064503', 'tt0187078', 'tt0780504')
AND tb1.tconst NOT IN ('tt0237184', 'tt0508158', 'tt0953318')
LIMIT 5