SELECT t.* FROM titles AS t WHERE NOT EXISTS(SELECT * from title_ratings r where r.title = t.id AND r.userID=?) OR EXISTS(SELECT * from title_ratings r where r.title = t.id AND r.averageRating >=?)