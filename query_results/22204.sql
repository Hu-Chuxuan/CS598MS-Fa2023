SELECT DISTINCT t.* FROM titles AS t JOIN ratings r ON t.titleID = r.titleID WHERE t.primaryTitle='coco' AND (r.averageRating>6 OR r.numVotes=1)