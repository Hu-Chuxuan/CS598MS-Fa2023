SELECT DISTINCT titleID FROM (title_basic JOIN title_rating WHERE tconst = "Manchester By The Sea") AND ((title_basic.titleType LIKE "%drama%" OR title_basic.titleType LIKE "%thriller%")) AND (title_basic.isAdult IS NULL)