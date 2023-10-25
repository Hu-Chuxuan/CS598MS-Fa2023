SELECT DISTINCT t.* FROM title_basics AS t JOIN title_ratings as r ON t.titleID = r.titleID WHERE ((r.averageRating >=? AND r.numVotes > 0)) OR ((((t.startYear BETWEEN? AND? ) AND (t.endYear <=?))))