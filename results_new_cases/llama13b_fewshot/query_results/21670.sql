SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Superhero', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET('Science Fiction', tb2.genres) > 0
    AND tb2.primaryTitle = tb.primaryTitle
) > 0