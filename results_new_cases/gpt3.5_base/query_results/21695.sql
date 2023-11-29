SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0119217', 'tt0117998', 'tt1431045')  -- Exclude movies in user preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5