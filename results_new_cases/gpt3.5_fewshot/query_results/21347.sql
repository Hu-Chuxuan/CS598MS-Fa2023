SELECT tb.primaryTitle
FROM title_basics tb
LEFT JOIN title_principals tp ON tb.tconst = tp.tconst
LEFT JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND FIND_IN_SET('Adam Sandler', nb.primaryName) > 0