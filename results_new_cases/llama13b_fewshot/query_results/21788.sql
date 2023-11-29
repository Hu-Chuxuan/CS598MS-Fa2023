SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Musical', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET('Les Misérables', tb.title_basics) > 0