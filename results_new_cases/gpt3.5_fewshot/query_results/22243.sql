SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Forrest Gump' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Saving Private Ryan' LIMIT 1), tb.genres) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND tb.startYear > 2010