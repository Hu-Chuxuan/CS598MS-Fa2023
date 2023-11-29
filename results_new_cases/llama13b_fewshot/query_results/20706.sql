SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND FIND_IN_SET('Hot Tub Time Machine', tb2.genres) > 0
    OR FIND_IN_SET('The Hangover (2009)', tb2.genres) > 0
    OR FIND_IN_SET('Harold & Kumar', tb2.genres) > 0
) > 0