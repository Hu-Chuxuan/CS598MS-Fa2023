SELECT * FROM 
(
    SELECT t.titleID AS id, t.primaryTitle AS title, r.* as rating
FROM titles AS t INNER JOIN ratings AS r ON t.titleID = r.titleId AND r.userID =?
WHERE t.titleType='Comedy' AND r.averageRating >? OR r.numVotes >?
ORDER BY t.startYear DESC LIMIT 3