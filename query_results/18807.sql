SELECT * FROM title_recommendation WHERE
((user_preferences LIKE '%Trainspotting%' OR user_preferences LIKE '%Spotting%') AND
(numvotes>='2'))
AND ((averagerating BETWEEN 7 AND 10)) ORDER BY averagerating DESC LIMIT 5