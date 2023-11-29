SELECT DISTINCT t.* FROM title AS t INNER JOIN title_ratings r ON r.tconst = t.tconst WHERE ((r.averageRating BETWEEN 7 AND 8 OR r.numVotes > 3)) AND ((r.isAdult!= 1))