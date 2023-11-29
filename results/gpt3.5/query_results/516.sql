SELECT tb.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Thriller%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt3896198', 'tt0770828', 'tt3065204', 'tt3874544')  /* excluding user preference history */
ORDER BY tr.averageRating DESC
LIMIT 5