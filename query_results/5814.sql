SELECT t.* FROM title_basic AS t INNER JOIN name_basics AS n ON t.titleId = n.titleId WHERE t.isAdult=FALSE AND t.startYear<2020