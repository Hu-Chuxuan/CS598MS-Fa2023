SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0332280', 'tt1120985')
ORDER BY tr.averageRating DESC
LIMIT 5