SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%' AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('The Goonies (1985)', 'Pirates of the Caribbean ')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5