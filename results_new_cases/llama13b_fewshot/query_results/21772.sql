SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Martian' LIMIT 1)) > 0
AND FIND_IN_SET('Drama', tb.genres) > 0
AND startYear > 2010
AND startYear < 2020
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE primaryTitle = tb.primaryTitle AND startYear < 2010)
