SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%'
AND tb.startYear <= 1990
AND tb.primaryTitle != 'The Goonies'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5