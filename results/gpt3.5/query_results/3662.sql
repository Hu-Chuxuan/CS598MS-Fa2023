SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2017
AND tb.genres LIKE '%Horror%'
AND tb.tconst <> 'tt5774450'  -- excluding Happy Death Day
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1