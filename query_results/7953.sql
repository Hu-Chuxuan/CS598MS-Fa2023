SELECT t.* FROM titles AS t WHERE
(t.genre = 'Drama' AND t.titleType = 'Movie') OR
(t.primaryTitle LIKE '%drama%' AND t.titleType IN ('TV', 'Mini-Series')) OR
(t.averageRating > 7)