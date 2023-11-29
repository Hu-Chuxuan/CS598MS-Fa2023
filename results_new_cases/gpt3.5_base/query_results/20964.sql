SELECT tb1.primaryTitle AS recommended_movie, AVG(tr.averageRating) AS average_rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
JOIN title_principals tp ON tb1.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear >= 2010
AND tb1.genres LIKE '%Action%'
AND (tb1.primaryTitle = 'Deadpool (2016)' OR tb1.primaryTitle = 'Deadpool 2 (2018)')
AND tb1.primaryTitle NOT IN ('Deadpool 2 (2018)', 'Black Panther (2018)', 'The Mask (1994)', 'Deadpool (2016)', 'Click (2006)')
GROUP BY tb1.primaryTitle
ORDER BY average_rating DESC
LIMIT 5