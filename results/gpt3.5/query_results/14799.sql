SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tr.averageRating >= 8
AND tb1.startYear >= 2017
AND tb1.titleType = 'movie'
AND nb.primaryName NOT IN ('Chadwick Boseman', 'Daniel Kaluuya')
AND tb1.primaryTitle NOT IN ('Black Panther', 'Get Out')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 5