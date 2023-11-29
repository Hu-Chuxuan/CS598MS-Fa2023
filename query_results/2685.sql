SELECT * FROM `title_ratings` WHERE `averageRating >= ${avg}` AND `numVotes > ${votes}`,
ORDER BY `startYear ASC`