SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_principals AS tp ON tb1.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2000
AND tr.averageRating >= 7
AND nb.primaryName = 'Will Smith'
AND tb1.primaryTitle NOT IN ('The Pursuit of Happyness (2006)', 'I Am Legend  (2007)', 'Bright (2017)')
GROUP BY tb1.primaryTitle
ORDER BY COUNT(*) DESC
LIMIT 5