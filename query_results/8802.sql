SELECT t.* FROM
(title_rating r JOIN
name_rating n ON r.averageRating = n.averageRating AND n.primaryName =? WHERE n.numVotes >= 75 ORDER BY n.averageRating DESC LIMIT 5) AS rr
JOIN title_cast c USING (id)
WHERE c.category IN ('Actress') AND c.job LIKE '%Actor%'
AND c.ordering > 98