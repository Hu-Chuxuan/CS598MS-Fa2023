SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Horror', tb.genres) > 0 OR FIND_IN_SET('Romance', tb.genres) > 0 OR FIND_IN_SET('Thriller', tb.genres) > 0)
AND (tb.startYear > 2000 OR tb.startYear < 2010)
AND tb.titleType = 'movie'