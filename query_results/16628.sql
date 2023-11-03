SELECT t.* FROM title_basics AS t JOIN title_ratings as r ON t.titleId = r.titleId WHERE r.numVotes >= 7 AND (r.averageRating >.8 OR r.averageRating <.6)