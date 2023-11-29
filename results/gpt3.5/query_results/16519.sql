SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('Inception (2010)', 'Batman Begins', 'The Dark Knight  (2008)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5