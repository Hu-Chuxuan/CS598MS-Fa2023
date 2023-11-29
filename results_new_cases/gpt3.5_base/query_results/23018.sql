SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%comedy%' OR tb.genres LIKE '%action%')
AND tb.primaryTitle NOT IN ('Deadpool 2 (2018)', 'Deadpool (2016)')
ORDER BY tr.averageRating DESC
LIMIT 5