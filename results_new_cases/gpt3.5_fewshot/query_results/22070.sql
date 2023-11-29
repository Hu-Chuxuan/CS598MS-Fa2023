SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Animal', tb.genres) > 0
AND tb.startYear > 1980
AND tb.startYear < 2022