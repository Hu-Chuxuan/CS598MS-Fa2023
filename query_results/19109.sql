SELECT t.titleID as id, r.rating AS rating FROM ratings r INNER JOIN titles t ON t.id = r.titleId WHERE r.user = 'John Doe'