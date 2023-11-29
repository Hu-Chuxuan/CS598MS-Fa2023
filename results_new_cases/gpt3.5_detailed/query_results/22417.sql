SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear, tr.averageRating
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Horror%'
AND (tb1.originalTitle = 'It' AND tb1.startYear = 2017) OR (tb1.originalTitle = 'Mama' AND tb1.startYear = 2013)
AND tb1.tconst NOT IN ('tt0120903')  -- Excluding 'X-Men (2000)'
ORDER BY tr.averageRating DESC
LIMIT 5