SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS average_rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 1996  -- Released before or in the same year as Fargo
AND tb.startYear >= 1980  -- Released after 1980
AND tb.titleType = 'movie'  -- Only consider movies
AND tb.genres LIKE '%Crime%'  -- Similar genre to Fargo
AND tb.tconst != 'tt0068646'  -- Exclude Fargo from recommendations
AND tb.tconst NOT IN ('tt0091129', 'tt0119217')  -- Exclude movies from user preference history
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5