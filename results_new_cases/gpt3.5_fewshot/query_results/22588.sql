SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Sci-Fi', tb.genres) > 0