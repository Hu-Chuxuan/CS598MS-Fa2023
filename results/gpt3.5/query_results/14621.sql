SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2018
AND tb.genres LIKE '%Romance%'
AND tb.tconst NOT IN ('tt2322441', 'tt1261941', 'tt3417428') 
ORDER BY tr.averageRating DESC
LIMIT 5