SELECT t.* FROM title_ratings AS r INNER JOIN title_basics AS b ON r.titleID = b.titleID WHERE r.primaryTitle LIKE '%' + @input% AND r.numVotes >= 1