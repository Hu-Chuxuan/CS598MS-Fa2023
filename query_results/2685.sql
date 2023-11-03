SELECT DISTINCT movies.* FROM titles AS t JOIN name_basics ON t.titleID = name_basics.primaryMovie AND ((name_basics.category='comedy') OR (name_basics.job='actor')) WHERE ((((t.averageRating>7)) AND (NOT EXISTS (SELECT * FROM ratings WHERE rating < 8))))