SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'The Goonies' LIMIT 1), tb.genres) > 0
AND (tb.startYear > 1980 AND tb.startYear < 1990)