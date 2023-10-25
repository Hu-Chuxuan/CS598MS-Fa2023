SELECT DISTINCT t.* FROM title AS t JOIN name AS n ON t.titleId = n.movieId WHERE
(t.genre IN ('Action','Drama') AND ((n.primaryProfession='Actor' OR n.primaryProfession='Actress')))