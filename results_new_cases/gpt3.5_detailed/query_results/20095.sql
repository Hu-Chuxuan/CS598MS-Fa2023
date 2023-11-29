SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0289043')  -- excluding 'Jason X (2001)'
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 1