SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Click Flicks', tb.genres) > 0
AND NOT EXISTS (
    SELECT 1
    FROM title_basics
    WHERE primaryTitle = tb.primaryTitle
      AND startYear > 2015
)
