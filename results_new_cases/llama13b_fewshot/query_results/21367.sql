SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Training Day' LIMIT 1)) > 0
AND FIND_IN_SET('Action', tb.genres) > 0