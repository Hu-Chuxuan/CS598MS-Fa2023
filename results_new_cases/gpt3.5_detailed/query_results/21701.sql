SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear >= 2000
AND tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT LIKE '%Scream%'
AND tb.primaryTitle NOT LIKE '%Behind the Mask%'
AND tr.averageRating > 7
AND tr.numVotes > 500
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5