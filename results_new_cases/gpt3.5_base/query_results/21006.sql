SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.genres LIKE '%Rom. Com%'
AND tb.genres LIKE '%Thriller%'
AND tb.primaryTitle NOT IN ('Halloween (2007)', 'Avengers: Infinity War (2018)', 'Saw (2004)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10