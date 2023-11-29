SELECT tb.tconst, tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'tvSeries'
AND tb.genres LIKE '%Animation%'
AND tb.primaryTitle != 'Madagascar'
AND tb.primaryTitle != 'The Lion King'
AND tb.primaryTitle != 'Cinderella'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5