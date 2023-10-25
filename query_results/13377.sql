SELECT t.* FROM title_basics AS t JOIN
title_rating as tr ON tr.primaryTitle = t.titleID AND
tr.averageRating >.6 WHERE t.isAdult <> true ORDER BY tr.numVotes DESC LIMIT 5