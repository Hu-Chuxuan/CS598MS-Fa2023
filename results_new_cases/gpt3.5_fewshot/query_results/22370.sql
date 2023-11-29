SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
WHERE FIND_IN_SET('book', tb.genres) > 0
AND tp.category = 'writer'