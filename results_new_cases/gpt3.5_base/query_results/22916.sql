SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.startYear >= 2010
AND tb.primaryTitle != 'Frozen'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5