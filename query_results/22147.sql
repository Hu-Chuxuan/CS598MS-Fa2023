SELECT t.* FROM imdb.title AS t WHERE
(
    t.genre IN ('Drama','Comedy') AND (t.runtime < 60) OR
    t.rating >.5)