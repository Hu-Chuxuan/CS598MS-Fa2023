SELECT tb.primaryTitle
FROM title_basics tb
WHERE (FIND_IN_SET('Comedy', tb.genres) > 0 OR FIND_IN_SET('Horror', tb.genres) > 0)
AND tb.tconst NOT IN ('tt0110632', 'tt0137523')