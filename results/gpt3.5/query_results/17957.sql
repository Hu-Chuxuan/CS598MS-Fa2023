SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear < 1980
AND tb.runtimeMinutes > 90
AND (tb.genres LIKE '%Thriller%' OR tb.genres LIKE '%Horror%')
AND tb.primaryTitle NOT IN ('Play Misty for Me (1971)', 'Psycho (1960)')
ORDER BY tr.averageRating DESC
LIMIT 5