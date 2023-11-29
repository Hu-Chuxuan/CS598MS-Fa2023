SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND FIND_IN_SET('The Departed', tb.genres) > 0
AND startYear > 2005