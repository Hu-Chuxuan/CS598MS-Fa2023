SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS number_of_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.primaryTitle ILIKE '%IT%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5