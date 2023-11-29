SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Sci-Fi', tb.genres) > 0
AND startYear > 2010
AND tb.tconst NOT IN ('tt0371746', 'tt0119528', 'tt1259521')