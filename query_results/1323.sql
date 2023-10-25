SELECT t.* FROM imdb.title AS t JOIN imdb.name AS n ON t.nid = n.nID WHERE
(n.primaryName LIKE '%Tom Hanks%' AND n.birthYear >= '1956') OR
(n.director IN ('Joe Roth'))OR (n.writer IN('Carrie Fisher','Nora Ephron'))