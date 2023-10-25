SELECT DISTINCT t.* FROM title AS t WHERE EXISTS( SELECT * FROM rating r WHERE r.titleID = t.id AND r.userID=1 ) OR EXISTS( SELECT * FROM cast c WHERE c.titleID = t.id)