SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 2019
AND tb.genres LIKE '%Action%'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Star Wars: Episode VIII – The Last Jedi (2017)', 'Avatar  (2009)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5