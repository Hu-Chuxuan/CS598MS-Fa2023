SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Fantasy', tb.genres) > 0
AND tb.startYear > 2000
AND tb.isAdult = 0