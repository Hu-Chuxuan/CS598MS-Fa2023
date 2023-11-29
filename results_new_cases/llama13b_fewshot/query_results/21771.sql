SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Forgetting Sarah Marshall' LIMIT 1)) > 0
AND FIND_IN_SET('Romance', tb.genres) > 0
AND startYear > 2000
AND startYear < 2020