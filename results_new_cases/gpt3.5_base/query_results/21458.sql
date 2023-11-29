SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle != 'The Master of Disguise' 
AND tb.primaryTitle NOT IN ('John Wick', 'Taken', 'Taken 2')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5