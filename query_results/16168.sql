SELECT DISTINCT t.* FROM title_basics AS t JOIN title_rating AS r ON t.titleID = r.titleID WHERE ((r.numVotes >= 2))