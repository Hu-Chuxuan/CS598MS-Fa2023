SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2008
AND tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle NOT IN ('Step Brothers') OR tb.primaryTitle IS NULL)
ORDER BY tr.averageRating DESC
LIMIT 5