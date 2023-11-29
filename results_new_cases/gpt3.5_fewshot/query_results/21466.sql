SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('History', tb.genres) > 0
AND FIND_IN_SET('Epic', tb.genres) > 0