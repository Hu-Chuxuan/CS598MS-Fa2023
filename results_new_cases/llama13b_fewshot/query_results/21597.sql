SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Crime', tb.genres) > 0
AND FIND_IN_SET('Pulp Fiction (1994)', tb.genres) > 0