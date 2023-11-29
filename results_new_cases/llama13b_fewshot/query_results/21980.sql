SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Stand by Me', tb.originalTitle) > 0
AND FIND_IN_SET('Classic', tb.genres) > 0
AND NOT EXISTS (SELECT 1 FROM title_basics tb2 WHERE tb2.primaryTitle = tb.primaryTitle AND tb2.startYear > 2000)