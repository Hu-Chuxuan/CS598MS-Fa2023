SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_crew tc ON tb.tconst = tc.tconst
WHERE FIND_IN_SET('Book', tb.genres) > 0