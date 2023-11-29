SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Sci-Fi%' AND tb.genres LIKE '%Comedy%'
AND (tb.primaryTitle <> 'Galaxy Quest (1999)' OR tb.startYear <> 1999)
AND tb.primaryTitle NOT IN ('Star Trek  (2009)', 'The Martian  (2015)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5