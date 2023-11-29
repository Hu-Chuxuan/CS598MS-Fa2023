SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Horror', tb.genres) OR FIND_IN_SET('Comedy', tb.genres))
AND tb.startYear > 2010
AND tb.startYear < 2020