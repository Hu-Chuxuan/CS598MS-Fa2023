SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Doctor', tb.genres) > 0