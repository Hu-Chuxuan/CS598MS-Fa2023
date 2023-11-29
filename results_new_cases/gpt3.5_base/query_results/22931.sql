SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS total_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' OR tb.genres LIKE '%War%'
AND tb.primaryTitle NOT IN ('Full Metal Jacket (1987)', 'Black Hawk Down  (2002)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10