SELECT t.* FROM title_ratings AS r INNER JOIN title_principals AS p ON r.titleId = p.titleId WHERE r.averageRating >.7 AND p.category='actor' ORDER BY r.numVotes DESC LIMIT 1