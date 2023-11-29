SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Zombieland' LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = '30 Minutes or Less' LIMIT 1), tb.genres) > 0)
AND startYear > 1988
AND startYear < 1996