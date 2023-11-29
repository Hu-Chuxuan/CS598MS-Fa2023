SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Science Fiction', tb.genres) > 0
AND FIND_IN_SET('Alien (1979)', tb.genres) > 0
AND tb.startYear > 1975
AND tb.startYear < 2000