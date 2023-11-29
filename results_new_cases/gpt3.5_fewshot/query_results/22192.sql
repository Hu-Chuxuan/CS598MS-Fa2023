SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Thriller', tb.genres) > 0