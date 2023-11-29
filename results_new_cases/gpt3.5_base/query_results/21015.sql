SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
INNER JOIN title_basics tb2 ON tb1.genres LIKE '%Comedy%' AND tb1.tconst != tb2.tconst
WHERE tb2.primaryTitle IN ('The Texas Chain Saw Massacre (1974)', 'Black Panther (2018)', 'Wish Upon (2017)')
GROUP BY tb1.tconst
ORDER BY COUNT(tb1.tconst) DESC
LIMIT 5