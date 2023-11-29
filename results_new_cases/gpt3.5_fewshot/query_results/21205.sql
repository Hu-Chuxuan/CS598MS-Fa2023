SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Girls Trip' LIMIT 1), tb.genres) > 0
    OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Game Night' LIMIT 1), tb.genres) > 0)
    AND FIND_IN_SET('Comedy', tb.genres) > 0