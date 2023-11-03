SELECT t1.* FROM titles AS t1 JOIN name_basics as nb ON nb.primaryName = t1.titleID WHERE nb.primaryName IN ('Mike Tyson','Robert De Niro') AND (t1.startYear >= 1980 OR t1.endYear <= 2017)