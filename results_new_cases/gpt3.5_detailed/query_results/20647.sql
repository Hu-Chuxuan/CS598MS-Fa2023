SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' OR tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('It (1990)', 'It  (2017)', 'American Pie  (1999)', 'Avengers: Infinity War (2018)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5