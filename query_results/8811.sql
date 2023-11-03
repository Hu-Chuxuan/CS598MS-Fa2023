SELECT DISTINCT titles.* FROM titles LEFT JOIN rating ON ratings.titleId = titles.id WHERE (titles.primaryName LIKE '%John') AND ((titles.genre LIKE %'romance%' OR titles.genre LIKE %'comedy%')) ORDER BY RATING DESC LIMIT 1