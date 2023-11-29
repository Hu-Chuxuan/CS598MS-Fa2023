SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear > 2018
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt2557478')  -- exclude Pacific Rim Uprising
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5