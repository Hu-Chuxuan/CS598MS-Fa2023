SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Zootopia' LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Incredibles' LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Wreck-It Ralph' LIMIT 1), tb.genres) > 0
AND startYear > 2000
AND startYear < 2020