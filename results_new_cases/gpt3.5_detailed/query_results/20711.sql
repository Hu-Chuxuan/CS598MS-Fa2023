SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND NOT 'Horror' = ANY(tb.genres)
AND tb.primaryTitle != 'Avengers: Infinity War (2018)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10