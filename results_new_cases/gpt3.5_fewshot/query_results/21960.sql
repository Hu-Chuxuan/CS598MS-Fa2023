SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Saving Private Ryan' LIMIT 1)) > 0