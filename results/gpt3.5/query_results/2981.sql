SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Fantasy%' AND tb.genres LIKE '%Romance%'
AND tb.primaryTitle NOT IN ('Elf  (2003)', 'What Dreams May Come  (1998)', 'Mrs. Doubtfire (1993)')
AND (tb.startYear >= 1990 AND tb.startYear <= 2005)
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5