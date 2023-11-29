SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND (tb.primaryTitle != 'Behind the Mask' AND tb.startYear > 2000 AND tb.startYear < 2010)