SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Mystery%'
AND tb.primaryTitle NOT IN ('Black Mass  (2015)', 'The Tourist  (2010)')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 5