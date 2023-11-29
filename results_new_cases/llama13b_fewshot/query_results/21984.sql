SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 1960
AND startYear < 1985
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Rosemary\'s Baby' LIMIT 1)) > 0