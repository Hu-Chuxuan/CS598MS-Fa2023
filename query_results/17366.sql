SELECT * FROM
(SELECT t.*, r.averageRating AS rating, r.numVotes AS votes
FROM titles as t INNER JOIN ratings as r ON t.titleID = r.titleID)