SELECT t.* FROM title_basics AS t JOIN title_ratings AS r ON t.titleID = r.titleID WHERE t.primaryTitle LIKE '%Spider%'