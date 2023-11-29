SELECT tb.primaryTitle AS Recommended_Comedy_Movies
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2000
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('The Dark Knight (2008)', 'X-Men: The Last Stand (2006)')
ORDER BY tr.averageRating DESC
LIMIT 5