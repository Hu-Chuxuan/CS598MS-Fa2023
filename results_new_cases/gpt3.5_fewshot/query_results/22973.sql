SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND NOT FIND_IN_SET('Slapstick', tb.genres) > 0