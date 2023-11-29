SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Monster', tb.genres) > 0
AND tb.startYear > 2000