SELECT t.* FROM title_basics AS t JOIN title_ratings AS r ON r.titleID = t.id WHERE t.titleType='movie' AND r.averageRATING>7/10