SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND (
    SELECT COUNT(*)
    FROM title_basics tb2
    WHERE tb2.primaryTitle = tb.primaryTitle
    AND FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Untouchables' LIMIT 1)) > 0
    OR FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Pianist' LIMIT 1)) > 0
    OR FIND_IN_SET(tb2.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Whiplash' LIMIT 1)) > 0
) > 0