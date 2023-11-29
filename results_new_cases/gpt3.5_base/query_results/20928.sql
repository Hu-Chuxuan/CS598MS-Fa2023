SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musicals%'
    OR tb.genres LIKE '%Comedy%'
    OR tb.genres LIKE '%Action%'
    AND tb.primaryTitle NOT IN ('Ant-Man  (2015)', 'Avengers: Infinity War (2018)', 'Dreamgirls  (2006)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10