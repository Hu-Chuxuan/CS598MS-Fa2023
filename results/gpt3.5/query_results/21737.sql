SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Christopher Nolan'
AND tb1.titleType = 'movie'
AND tr.numVotes > 1000
AND tb1.startYear > 2008
AND tb1.genres LIKE '%Action%' 
AND tb1.genres LIKE '%Adventure%'
AND tb1.tconst NOT IN ('tt2015381', 'tt0800369', 'tt0848228', 'tt0371746')
GROUP BY recommended_movie, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5