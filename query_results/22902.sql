SELECT t.* FROM titles AS t INNER JOIN name_basics ON (t.primaryName = nb.nconst)