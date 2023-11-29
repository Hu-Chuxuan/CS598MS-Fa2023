SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Bill & Ted's Bogus Journey' LIMIT 1)) > 0
AND FIND_IN_SET('Adventure', tb.genres) > 0
AND startYear > 1980
AND startYear < 2005