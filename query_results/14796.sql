SELECT t.* FROM title_principals AS p JOIN title_ratings as r ON p.titleID = r.titleID AND p.category=r.category WHERE r.numVotes > 1