SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Marvel', tb.genres) > 0
AND tb.startYear >= 2008
AND tb.startYear <= 2022
AND tb.titleType = 'movie'