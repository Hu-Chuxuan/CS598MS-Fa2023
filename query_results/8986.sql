SELECT t.* FROM title_basic AS t INNER JOIN name_basic as c ON t.titleType = c.primaryName WHERE c.category IN ('Director','Writer') AND t.isAdult=FALSE ORDER BY t.startYear ASC