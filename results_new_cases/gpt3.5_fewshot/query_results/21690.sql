SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Battlefield Earth'), tb.genres) > 0
AND startYear > 1980
AND startYear < 2000