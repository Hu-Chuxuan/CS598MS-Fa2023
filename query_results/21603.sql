SELECT DISTINCT t.* FROM (title_basic AS t INNER JOIN title_rating AS r ON t.tconst = r.tconst) WHERE r.averageRating >= '7' AND t.genre IN ('Action', 'Comedy') ORDER BY r.numvotes DESC LIMIT 10