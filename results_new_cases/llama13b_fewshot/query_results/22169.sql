SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'Sinister' LIMIT 1)) > 0
AND FIND_IN_SET('Crime', tb.genres) > 0
AND FIND_IN_SET('Mystery', tb.genres) > 0