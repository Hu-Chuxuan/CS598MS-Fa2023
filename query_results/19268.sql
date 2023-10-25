SELECT * FROM
(SELECT tc.*, r.averageRating AS rating, r.numVotes AS votes
FROM title_rating AS tr JOIN title_details AS td ON tr.titleID = td.titleID AND r.titleID = tr.titleID
JOIN ratings AS r ON tr.ratingID = r.ratingID) WHERE titleType LIKE '%movie%' OR genre LIKE '%Drama'
ORDER BY rating DESC LIMIT 5