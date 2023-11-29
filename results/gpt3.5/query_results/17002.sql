SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 1969
AND tb.genres LIKE '%Western%'
AND tb.tconst NOT IN ('tt0053221', 'tt0056217')
ORDER BY tr.averageRating DESC
LIMIT 5