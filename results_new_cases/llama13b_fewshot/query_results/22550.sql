SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Incredibles' LIMIT 1)) > 0
AND startYear > 2000
AND (tb.runtimeMinutes < 60 OR tb.isAdult = 0)