SELECT tb.* FROM title_basics AS tb INNER JOIN
( SELECT r.* FROM title_ratings AS r WHERE r.numVotes >= 7 AND r.averageRating >.8 ) as r ON tb.titleId = r.titleID