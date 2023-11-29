SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (tb.startYear = 1979 OR tb.startYear = 1980)
AND tb.runtimeMinutes > 90
AND tb.runtimeMinutes < 120