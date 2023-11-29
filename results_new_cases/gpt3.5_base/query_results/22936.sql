SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2010
AND tb.primaryTitle != 'The Other Woman'
AND tb.primaryTitle NOT IN ('The Hurt Locker (2008)', 'Black Hawk Down (2002)', 'Saving Private Ryan (1998)', 'Full Metal Jacket (1987)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5