SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Children', tb.genres) > 0
AND startYear > 2000
AND (SELECT COUNT(*) FROM title_basics WHERE primaryTitle = 'Love Actually' LIMIT 1) > 0