SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Fantasy', tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Lord of the Rings: The Return of the King' LIMIT 1), tb.genres) > 0
AND startYear > 2000