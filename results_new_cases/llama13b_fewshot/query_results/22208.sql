SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Angels & Demons' LIMIT 1)) > 0
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'National Treasure' LIMIT 1)) > 0
AND tb.runtimeMinutes > 60
AND tb.startYear > 2000
AND tb.endYear < 2020