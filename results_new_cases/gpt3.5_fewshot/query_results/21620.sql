SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Pitch Perfect' LIMIT 1)) > 0
AND startYear > 2010
AND startYear < 2020