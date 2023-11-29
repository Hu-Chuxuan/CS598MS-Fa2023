SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.primaryTitle NOT IN ('How to Be a Latin Lover (2017)', 'Frida (2002)', 'Dogma  (1999)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5