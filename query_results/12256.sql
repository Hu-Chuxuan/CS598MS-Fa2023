SELECT t.* FROM (title_basic t INNER JOIN rating r ON t.titleId = r.titleId AND r.rating = "G") AS t WHERE t.isAdult <> true