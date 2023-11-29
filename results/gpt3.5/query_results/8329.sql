SELECT tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%'
AND tb.startYear > 1998
AND tb.primaryTitle NOT IN ('Early Man', 'Half Baked (1998)')
ORDER BY tr.averageRating DESC
LIMIT 5