SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'There\'s Something About Mary' LIMIT 1), tb.genres) > 0
AND startYear < 1990