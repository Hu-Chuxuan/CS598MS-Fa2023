SELECT t.* FROM title_ratings AS r JOIN name_basics AS b ON r.primaryTitle = b.titleID WHERE r.averageRating > 7 AND NOT EXISTS( SELECT * from title_principals as p where p.job LIKE '%actor%' ) ORDER BY SUM(r.numVotes)/SUM(b.numVotes) DESC LIMIT 8