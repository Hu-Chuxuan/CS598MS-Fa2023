SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie' 
AND tb.startYear <= 2010 
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Hangover (2010)', 'Old School  (2003)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1