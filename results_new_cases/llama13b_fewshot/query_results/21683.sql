SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Parody', tb.genres) > 0
AND startYear > 1980
AND startYear < 2020
AND NOT (primaryTitle LIKE '%The Naked Gun%' OR primaryTitle LIKE '%La La Land%')
LIMIT 5