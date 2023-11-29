SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Stoner', tb.genres) > 0
AND (SELECT COUNT(*) FROM title_basics WHERE genres = 'Comedy' AND startYear > 1980 AND startYear < 1995) > (SELECT COUNT(*) FROM title_basics WHERE genres = 'Stoner' AND startYear > 1980 AND startYear < 1995)