SELECT tb.titleType, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Romance%'
AND tb.startYear = 1989
AND tb.primaryTitle != 'Say Anything...'
AND tb.primaryTitle NOT IN ('Die Hard (1988)', 'The Avengers  (2012)', 'Deadpool  (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5