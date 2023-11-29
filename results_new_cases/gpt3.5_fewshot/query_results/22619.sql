SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.startYear > 1980
AND tb.startYear < 1990
AND FIND_IN_SET('Thriller', tb.genres) > 0
AND FIND_IN_SET('Sci-Fi', tb.genres) > 0