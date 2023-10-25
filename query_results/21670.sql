SELECT DISTINCT t.* FROM title_basics AS t INNER JOIN
(title_rating AS r ON r.movie = t.primaryTitle AND r.numVotes > 0 ORDER BY rating DESC LIMIT 6)