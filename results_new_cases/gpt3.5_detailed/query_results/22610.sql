SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Crime%'
AND tb.startYear >= 1990
AND tb.averageRating >= 7
AND tb.tconst NOT IN ('tt0365907', 'tt5463162', 'tt0074544', 'tt1825683', 'tt4154756', 'tt4154756')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5