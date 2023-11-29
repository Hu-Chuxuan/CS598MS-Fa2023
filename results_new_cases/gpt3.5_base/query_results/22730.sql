SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1999
AND tb.genres LIKE '%Drama%'
AND tb.tconst NOT IN ('tt0137523', 'tt5052448', 'tt1490017', 'tt0816711', 'tt4263482', 'tt3498820')
ORDER BY tr.numVotes DESC
LIMIT 5