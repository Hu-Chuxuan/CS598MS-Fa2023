SELECT tb.primaryTitle
FROM title_principals tp
JOIN title_basics tb ON tp.tconst = tb.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Oprah Winfrey'