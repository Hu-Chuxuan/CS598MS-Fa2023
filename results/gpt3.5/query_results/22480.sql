SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tp.tconst = tb1.tconst
JOIN name_basics AS nb ON nb.nconst = tp.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear > 2000
AND tb1.genres LIKE '%Action%'
AND nb.primaryName != 'Brad Bird'
AND tb1.tconst NOT IN ('tt0315642', 'tt0910936', 'tt0240772', 'tt0380268')
GROUP BY recommended_movie, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5