SELECT t.* FROM imdb.title AS t JOIN imdb.name AS n ON t.primaryTitle = n.primaryTitle WHERE ((t.isAdult = false AND (t.startYear >= 1980)) OR (t.endYear <= 2016))