SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Musical', tb.genres) > 0
AND tb.startYear > 2012
AND tb.startYear < 2023