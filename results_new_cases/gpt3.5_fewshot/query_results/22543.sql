SELECT tb.primaryTitle
FROM title_basics tb
INNER JOIN title_principals tp ON tb.tconst = tp.tconst
INNER JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Will Ferrell'