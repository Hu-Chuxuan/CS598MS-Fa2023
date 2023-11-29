SELECT primaryTitle
FROM title_basics
WHERE FIND_IN_SET('Comedy', genres) > 0
AND startYear > 1989
AND startYear < 2000