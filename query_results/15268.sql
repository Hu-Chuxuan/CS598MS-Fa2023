SELECT DISTINCT t.* FROM title AS t WHERE
(SELECT COUNT(*) FROM ratings r WHERE r.title = t.title AND r.averageRating >= 8.7 ) > 0