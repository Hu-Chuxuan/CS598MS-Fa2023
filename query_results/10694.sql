SELECT t.* FROM title AS t WHERE NOT EXISTS( SELECT * FROM rating AS r WHERE r.title = t.title AND r.userID = $userId)