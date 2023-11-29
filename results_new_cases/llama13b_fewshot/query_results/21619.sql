SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'K-19: The Widowmaker' LIMIT 1)) > 0
AND (
    FIND_IN_SET('Action', tb.genres) > 0
    OR FIND_IN_SET('Drama', tb.genres) > 0
)