SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Forgetting Sarah Marshall' LIMIT 1), tb.genres) > 0
AND startYear > 2000
AND startYear < 2010