SELECT t.* FROM title_basics AS t JOIN title_ratings AS r ON t.titleID = r.titleID AND r.averageRATING > 7 WHERE t.isAdult <> 1