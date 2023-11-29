SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND tb.runtimeMinutes > 90
AND FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Steel Magnolias' LIMIT 1), tb.genres) > 0