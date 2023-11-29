SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Ace Ventura: Pet Detective' LIMIT 1), tb.genres) > 0
OR FIND_IN_SET((SELECT genres FROM title_basics WHERE primaryTitle = 'Superbad' LIMIT 1), tb.genres) > 0)
AND tb.startYear > 1990
AND tb.startYear < 2015