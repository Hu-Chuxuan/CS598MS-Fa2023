SELECT t.* FROM title_basic AS t INNER JOIN
title_rating AS r ON t.titleID = r.titleID AND r.averageRating >.7 WHERE
r.numVotes >= 1