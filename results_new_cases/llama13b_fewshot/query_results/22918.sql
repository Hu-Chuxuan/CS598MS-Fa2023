SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Adventure', tb.genres) > 0
AND FIND_IN_SET('Action', tb.genres) > 0
AND FIND_IN_SET('Fantasy', tb.genres) > 0
AND startYear > 1980
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET(tb2.genres, tb.genres) > 0
    AND tb2.primaryTitle = 'Indiana Jones and the Temple of Doom'
) > 0