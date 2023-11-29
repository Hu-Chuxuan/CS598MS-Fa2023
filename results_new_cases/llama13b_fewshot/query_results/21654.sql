SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET(tb.primaryTitle, (SELECT primaryTitle FROM title_basics WHERE genres = 'Comedy' LIMIT 1)) > 0