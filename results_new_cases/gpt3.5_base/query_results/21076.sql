SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Adventure%' OR tb.genres LIKE '%Animation%'
AND tb.startYear <= 2022
AND tb.primaryTitle NOT IN ('Hollow  (2014)', 'A Walk in the Clouds (1995)', 'The Little Mermaid  (1989)', 'Hercules  (1997)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5