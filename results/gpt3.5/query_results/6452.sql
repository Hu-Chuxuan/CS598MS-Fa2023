SELECT tb.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2016
AND (tb.genres LIKE '%Animation%' OR tb.genres LIKE '%Comedy%')
AND tb.primaryTitle NOT IN ('Zootopia', 'Sing  (2016)', 'Moana  (2016)', 'Trolls  (2016)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 3