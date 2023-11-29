SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0317705', 'tt3521164', 'tt2380307', 'tt3874544', 'tt2096673', 'tt0452625', 'tt1323594')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10