SELECT t.* FROM title_basic as t JOIN title_rating AS r ON t.titleID = r.titleID WHERE r.averageRating >=? AND r.numVotes >?