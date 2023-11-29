SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Powder' LIMIT 1)) > 0
AND tb.startYear > 1968
AND tb.startYear < 2012