SELECT DISTINCT t.* FROM imdb.title AS t INNER JOIN imdb.name as n ON(t.nconst=n.nconst)