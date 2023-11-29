SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Murder on the Orient Express' LIMIT 1), tb.genres) > 0
AND startYear > 2010
AND startYear < 2020