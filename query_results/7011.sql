SELECT t.* FROM (title_ratings r INNER JOIN title_basic b ON r.primaryTitle = b.titleID) WHERE ((r.averageRating > 7 AND r.numVotes >= 60)) OR (b.startYear BETWEEN '1980' AND '1999')