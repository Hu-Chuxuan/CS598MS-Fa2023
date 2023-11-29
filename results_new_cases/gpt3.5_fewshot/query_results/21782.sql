SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (startYear = 2018 OR startYear = 2011 OR startYear = 2017)