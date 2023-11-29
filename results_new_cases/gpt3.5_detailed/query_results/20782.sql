SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE genres LIKE '%mystery%' OR genres LIKE '%action%'
AND tb.primaryTitle NOT IN ('Black Panther (2018)', 'Ant-Man and the Wasp (2018)', 'Avengers: Infinity War (2018)', 'Deadpool  (2016)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10