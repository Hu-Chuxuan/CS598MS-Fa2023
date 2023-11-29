SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Family', tb.genres) > 0
AND tb.isAdult = 0