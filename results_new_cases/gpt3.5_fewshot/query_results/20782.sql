SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Mystery', tb.genres) > 0 OR FIND_IN_SET('Action', tb.genres) > 0)
AND startYear < 2020
AND startYear > 2015
AND tb.tconst NOT IN ('tt1825683', 'tt5095030', 'tt4154756', 'tt6462858')