SELECT t.* FROM title_principals AS t JOIN title_ratings AS r ON t.job = "actress" AND r.primaryName IN ("Jamie Chung", "Bridget Moynahan") GROUP BY t.title