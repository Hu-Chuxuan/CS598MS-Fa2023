SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear > 2016
AND FIND_IN_SET('Comedy', tb.genres) > 0