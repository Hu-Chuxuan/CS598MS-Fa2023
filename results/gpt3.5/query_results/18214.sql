SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Horror%' AND tb.startYear > 2009
AND tb.tconst NOT IN ('tt1156398', 'tt1431045', 'tt1156364') -- excluding known movies
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5