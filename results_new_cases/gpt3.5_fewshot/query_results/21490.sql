SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Suspense', tb.genres) > 0 OR FIND_IN_SET('Horror', tb.genres) > 0 OR FIND_IN_SET('Drama', tb.genres) > 0)
AND tb.startYear > 1975
AND tb.startYear < 2015