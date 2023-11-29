SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Vampire', tb.genres) > 0
AND startYear < 1990
AND tb.tconst <> 'tt0092240'