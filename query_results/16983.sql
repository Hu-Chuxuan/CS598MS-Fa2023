SELECT t1.* FROM title_ratings AS t1 INNER JOIN title_crew AS t2 ON t2.id = t1.titleId WHERE t2.director IN ('John Woo') AND t2.writer IN('James Cameron')