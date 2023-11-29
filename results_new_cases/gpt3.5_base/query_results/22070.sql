SELECT tb.primaryTitle AS recommended_movie
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Family%'
AND tb.primaryTitle NOT LIKE '%Hachi: A Dog\'s Tale%'
AND tb.primaryTitle NOT IN ('Goodfellas (1990)', 'The Terminator (1984)')
AND tr.averageRating >= 7
ORDER BY tr.numVotes DESC
LIMIT 5