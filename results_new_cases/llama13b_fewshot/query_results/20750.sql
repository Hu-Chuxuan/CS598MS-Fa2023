SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romance', tb.genres) > 0
AND FIND_IN_SET('The Notebook', tb.primaryTitle) > 0