SELECT t.* FROM title_ratings AS r INNER JOIN title_basics AS b ON b.tconst = r.titleType WHERE ((r.numVotes > 2)) AND (b.isAdult == false)