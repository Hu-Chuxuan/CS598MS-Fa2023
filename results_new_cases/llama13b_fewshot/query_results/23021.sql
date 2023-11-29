SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.genres = tb.genres
    AND tb2.startYear > 2000
    AND tb2.endYear < 2020
    ) > 0