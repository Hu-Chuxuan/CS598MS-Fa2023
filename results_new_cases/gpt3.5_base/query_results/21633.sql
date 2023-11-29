SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.tconst NOT IN ('tt0109830', 'tt0319061')  -- Excluding Forrest Gump and Big Fish
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10