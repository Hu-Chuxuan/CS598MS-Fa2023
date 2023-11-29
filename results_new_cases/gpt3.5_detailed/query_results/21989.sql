SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%')
AND tb.startYear >= 2010
AND tb.tconst NOT IN ('tt1591095', 'tt3348730', 'tt3567288')
ORDER BY tr.averageRating DESC
LIMIT 10