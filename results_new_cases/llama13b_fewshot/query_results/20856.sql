SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Get Out', tb.genres) > 0
AND FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear > 2015
AND startYear < 2020