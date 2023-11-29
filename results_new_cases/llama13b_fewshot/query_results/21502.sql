SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Departed' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Goodfellas' LIMIT 1)) > 0
AND startYear > 1980
AND (runtimeMinutes > 60 OR runtimeMinutes < 60 AND isAdult = 0)
ORDER BY startYear DESC, averageRating DESC