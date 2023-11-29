SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Fantasy', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0