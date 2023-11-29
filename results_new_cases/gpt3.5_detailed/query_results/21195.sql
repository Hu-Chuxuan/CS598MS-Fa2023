SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Animation%'
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt0478970', 'tt5463162', 'tt1825683', 'tt0848228', 'tt4154756', 'tt1431045')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5