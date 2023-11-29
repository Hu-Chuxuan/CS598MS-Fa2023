SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('War', tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Darkest Hour' LIMIT 1), tb.genres) > 0