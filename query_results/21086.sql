SELECT DISTINCT tc.* FROM movies AS m INNER JOIN titles AS t ON m.titleId = t.id WHERE m.rating > '7' AND ((m.releaseDate BETWEEN '1960-01-01') OR (m.releaseDate IS NULL)) ORDER BY t.averageRating DESC LIMIT 10