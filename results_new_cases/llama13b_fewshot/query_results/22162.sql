SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Body Swap', (SELECT genres FROM title_basics WHERE primaryTitle = 'Freaky Friday' LIMIT 1)) > 0
AND FIND_IN_SET('Horror', tb.genres) > 0