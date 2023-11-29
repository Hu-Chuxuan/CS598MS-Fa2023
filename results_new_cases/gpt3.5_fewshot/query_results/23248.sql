SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.genres LIKE '%Family%'
AND (tb.startYear >= 1990 OR tb.startYear <= 1985)