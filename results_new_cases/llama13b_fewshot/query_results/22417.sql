SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND startYear > 2010
AND FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'It' LIMIT 1)) > 0
OR FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Mama' LIMIT 1)) > 0