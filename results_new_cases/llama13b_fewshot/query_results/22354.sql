SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_ratings tr
    WHERE tr.title = tb.primaryTitle
      AND tr.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE primaryTitle = 'It (1990)')
) > 0