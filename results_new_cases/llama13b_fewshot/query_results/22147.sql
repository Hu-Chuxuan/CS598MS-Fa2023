SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Meatballs' LIMIT 1)) > 0
AND FIND_IN_SET('Summer', tb.genres) > 0