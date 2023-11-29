SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Dumb and Dumber' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1), tb.genres) > 0
AND startYear > 2000
AND startYear < 2010