SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND (tb.startYear = 2016 OR tb.startYear = 1999)