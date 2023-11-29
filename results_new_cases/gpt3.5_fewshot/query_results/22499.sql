SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Animation', tb.genres) > 0
AND tb.startYear > 2015
AND tb.startYear < 2018