SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres
FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0209144')  -- Exclude "Memento"
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5