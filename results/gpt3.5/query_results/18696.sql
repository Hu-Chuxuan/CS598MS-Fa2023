SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr
ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2010
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating > 6.5
AND tb.primaryTitle NOT IN ('The Borrowers  (1997)', 'The Tourist  (2010)', 'Honey, I Shrunk the Kids (1989)', 'Strange Brew (1983)')
ORDER BY tr.numVotes DESC
LIMIT 5