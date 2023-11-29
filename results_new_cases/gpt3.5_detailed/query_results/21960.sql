SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%War%' 
AND tb.startYear >= 1990 
AND tb.startYear <= 2000
AND tb.tconst != 'tt0120815' 
AND tb.primaryTitle NOT IN ('Forever Young  (1992)', 'Powder  (1995)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5