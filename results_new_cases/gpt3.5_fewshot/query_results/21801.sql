SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Kiss the Girls' LIMIT 1), tb.genres) > 0
AND startYear > 1995
AND startYear < 1998