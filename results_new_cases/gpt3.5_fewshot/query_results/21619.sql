SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Action', tb.genres) > 0 OR FIND_IN_SET('Drama', tb.genres) > 0)
AND tb.startYear > 2002
AND tb.primaryTitle <> 'K-19: The Widowmaker'