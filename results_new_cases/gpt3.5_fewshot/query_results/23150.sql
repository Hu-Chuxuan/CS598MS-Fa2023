SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Purge' LIMIT 1), tb.genres) > 0
AND startYear > 2011
AND startYear < 2019