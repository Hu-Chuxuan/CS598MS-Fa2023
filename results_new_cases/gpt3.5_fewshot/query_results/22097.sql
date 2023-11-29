SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Deadpool' LIMIT 1), tb.genres) > 0