SELECT t.* FROM title_ratings r INNER JOIN title_basics b ON b.titleId = r.titleId WHERE (r.averageRating > 6 AND r.numVotes >= 100)