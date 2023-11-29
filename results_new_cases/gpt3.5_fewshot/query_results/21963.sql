SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Drive' LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Italian Job' LIMIT 1), tb.genres) > 0)
AND startYear > 2015