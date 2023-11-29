SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND startYear < 1995
AND tb.tconst NOT IN ('tt0110912', 'tt5117670')