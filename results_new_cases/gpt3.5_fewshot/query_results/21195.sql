SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animation', tb.genres) > 0
ORDER BY (tb.startYear - 2021) ASC
LIMIT 5