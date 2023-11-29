SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT 'Documentary' = ANY (tb.genres)
AND NOT 'Horror' = ANY (tb.genres)
AND tb.primaryTitle NOT IN ('The Lion King (1994)', 'Kung Fu Panda (2008)', 'The Greatest Showman (2017)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1