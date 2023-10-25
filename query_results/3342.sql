SELECT t.* FROM title AS t WHERE
(t.titleType LIKE '%comedy%' AND t.averageRating > 7 OR
t.genre LIKE %'Action%') ORDER BY rating DESC LIMIT 1