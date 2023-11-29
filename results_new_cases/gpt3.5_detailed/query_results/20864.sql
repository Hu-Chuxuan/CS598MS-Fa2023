SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear > 2017
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 3