SELECT primaryTitle
FROM title_basics
WHERE FIND_IN_SET('Sci-Fi', genres) > 0