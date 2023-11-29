SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Nocturnal Animals' LIMIT 1), tb.genres) > 0
AND tb.startYear < 2016
AND tb.startYear > 2000