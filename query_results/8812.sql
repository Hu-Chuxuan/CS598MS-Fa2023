SELECT * FROM
( SELECT r.*, t.* FROM rating AS r INNER JOIN titles AS t ON r.titleId = t.id ) WHERE rating.averageRATING >.8 AND rating.numVOTES >= 50