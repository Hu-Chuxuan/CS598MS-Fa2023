SELECT * FROM (title_principals tp INNER JOIN name_basics nb ON nb.primaryName = tp.characters) WHERE (tp.job LIKE '%actor%' OR tp.job LIKE '%actress%') AND ((nb.category IN ('Actress','Actor')))