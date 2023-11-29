SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Action%' OR tb.genres LIKE '%Comedy%')
AND tb.primaryTitle NOT IN ('Coming Home  (2012)', 'Mermaid  (2000)', 'Black Panther (2018)', 'Jumanji  (2017)', 'Train Ride (2005)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5