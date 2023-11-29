SELECT tb.primaryTitle
FROM title_basics tb
WHERE (tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Thriller%')
AND (tb.startYear = 2017 OR tb.startYear = 2013)