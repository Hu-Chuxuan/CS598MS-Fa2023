SELECT t.* FROM title_basic t JOIN name_basic n ON t.titleType = n.primaryName WHERE t.startYear >= 1980 AND t.endYear <= 2016 AND t.isAdult = true