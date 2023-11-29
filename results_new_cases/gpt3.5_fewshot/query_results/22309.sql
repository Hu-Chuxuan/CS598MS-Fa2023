SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Young Guns' LIMIT 1)) > 0
AND startYear > 1980
AND startYear < 1995