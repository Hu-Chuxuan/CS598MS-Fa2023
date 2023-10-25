SELECT DISTINCT t.* FROM imdb.title AS t JOIN imdb.name AS n ON n.primaryName = t.primaryName WHERE t.isAdult!= "yes" AND t.startYear >= CONVERT(YEAR,'now') - 9 AND t.endYear <= CONVERT(YEAR,'now') + 7