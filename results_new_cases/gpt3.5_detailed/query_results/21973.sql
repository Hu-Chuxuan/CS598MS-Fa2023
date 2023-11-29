SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Scarlett Johansson'
AND tb.titleType = 'movie'