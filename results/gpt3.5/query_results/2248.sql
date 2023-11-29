SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2010
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt2334879', 'tt4484084', 'tt0477348', 'tt4651520', 'tt4438848')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5