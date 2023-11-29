SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Crime', tb.genres) > 0 OR FIND_IN_SET('Drama', tb.genres) > 0)
AND (tb.startYear > 1980 AND tb.startYear < 2022)