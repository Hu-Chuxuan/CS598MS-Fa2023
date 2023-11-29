SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Foul Play' LIMIT 1)) > 0
    AND FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'National Lampoon''s Vacation' LIMIT 1)) > 0
    AND FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'National Lampoon''s Christmas Vacation' LIMIT 1)) > 0
) > 0