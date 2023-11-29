SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.startYear > 2010
AND tb.primaryTitle NOT IN ('Die Hard (1988)', 'Deadpool  (2016)', 'The Terminator (1984)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5