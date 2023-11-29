SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
AND FIND_IN_SET('Comedy', tb.genres) > 0
AND (SELECT COUNT(*) FROM title_basics WHERE genres = 'Horror' AND startYear > 2010 LIMIT 1) > 5
AND (SELECT COUNT(*) FROM title_basics WHERE genres = 'Comedy' AND startYear > 2010 LIMIT 1) > 5