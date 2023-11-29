SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Porky\'s' AND startYear = 1981 LIMIT 1), tb.genres) > 0
AND (tb.startYear BETWEEN 1970 AND 1990)