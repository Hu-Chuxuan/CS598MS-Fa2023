SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Parody', tb.genres) > 0
AND tb.startYear > 1980
AND tb.runtimeMinutes < 150