SELECT tb.primaryTitle
FROM title_basics tb
WHERE isAdult = 0
AND startYear < 2000
AND startYear > 1990
AND runtimeMinutes > 90
AND runtimeMinutes < 150
AND FIND_IN_SET('Comedy', tb.genres) > 0