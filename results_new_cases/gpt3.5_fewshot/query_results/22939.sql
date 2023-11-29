SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Action', tb.genres) > 0 OR FIND_IN_SET('War', tb.genres) > 0)