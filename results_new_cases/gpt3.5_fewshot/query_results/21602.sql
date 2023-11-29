SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Gone Girl' LIMIT 1), tb.genres) > 0
AND tb.startYear > 2000
AND tb.startYear < 2010
AND tb.tconst NOT IN ('tt0314331', 'tt0332280')