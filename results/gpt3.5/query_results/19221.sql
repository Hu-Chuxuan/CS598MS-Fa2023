SELECT tb.primaryTitle AS recommended_movie, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Children%' AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 1990
AND tb.titleType = 'movie'
AND tb.tconst != 'tt0110357'  -- Excluding 'The Lion King' from the recommendations
ORDER BY tr.averageRating DESC
LIMIT 5