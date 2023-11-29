SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Hunt for Red October' LIMIT 1), tb.genres) > 0
AND startYear > 1985
AND startYear < 1995