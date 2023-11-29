SELECT tb.primaryTitle
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON nb.nconst = tp.nconst
WHERE nb.primaryName = 'Pineapple Express'
AND tb.tconst != 'Pineapple Express'