SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Fantasy', tb.genres) > 0
AND (tb.startYear > 1980 AND tb.startYear < 2015)
AND NOT EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.primaryTitle = tb.primaryTitle AND tb2.isAdult = 1)