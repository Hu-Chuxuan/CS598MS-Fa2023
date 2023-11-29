SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musicals%' 
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Action%'
AND tb.primaryTitle NOT IN ('Ant-Man (2015)', 'Avengers: Infinity War (2018)', 'Dreamgirls (2006)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10