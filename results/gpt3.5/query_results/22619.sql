SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('The Other Woman', 'Ghostbusters')
ORDER BY tr.averageRating DESC
LIMIT 5