SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Blade Runner' LIMIT 1)) > 0
AND startYear > 1980
AND startYear < 1990