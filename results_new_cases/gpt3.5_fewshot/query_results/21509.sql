SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Disney', tb.genres) > 0