SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Old School' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Inside Out' LIMIT 1)) > 0
AND startYear > 2000
AND (tb.runtimeMinutes < 120 OR tb.runtimeMinutes IS NULL)