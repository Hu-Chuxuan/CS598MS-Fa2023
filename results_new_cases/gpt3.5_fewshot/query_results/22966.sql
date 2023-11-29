SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear > 2000
AND tb.genres LIKE '%Adventure%'
OR tb.genres LIKE '%Horror%'
OR tb.genres LIKE '%Action%'
OR tb.genres LIKE '%Fantasy%'
LIMIT 10