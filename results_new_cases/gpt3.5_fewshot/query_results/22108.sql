SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Musical', tb.genres) > 0