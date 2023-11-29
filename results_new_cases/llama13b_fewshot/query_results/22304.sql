SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Science Fiction', tb.genres) > 0
AND FIND_IN_SET('Space Ship Combat', tb.genres) > 0
AND startYear > 2000
AND (
    SELECT COUNT(*)
    FROM title_crew tc
    WHERE tc.directors = tb.primaryTitle
    AND tc.startYear > 2000
    AND tc.startYear < 2020
    AND tc.genres = 'Science Fiction'
    AND tc.genres = 'Space Ship Combat'
    LIMIT 1
) > 0