SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%War%' OR tb.genres LIKE '%Action%'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10