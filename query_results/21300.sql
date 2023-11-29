SELECT * FROM
(
    SELECT * from `title_ratings` WHERE `averageRating` >=? AND `numVotes` >? ORDER BY `averageRating`, `numVotes`