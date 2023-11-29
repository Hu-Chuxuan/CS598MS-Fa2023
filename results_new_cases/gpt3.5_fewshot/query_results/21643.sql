SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Mystery', tb.genres) > 0