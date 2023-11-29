SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'The Boxtrolls (2014)'
AND tb1.titleType = 'movie'
AND tb1.primaryTitle != 'The Boxtrolls (2014)'
AND tb1.genres LIKE '%Horror%'
AND tb1.genres LIKE '%Mystery%'
