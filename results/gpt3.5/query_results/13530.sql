SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2007
AND tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Anchorman', 'The 40-Year-Old Virgin', 'Evan Almighty')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1