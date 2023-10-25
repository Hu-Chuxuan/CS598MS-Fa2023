SELECT * FROM title WHERE
((titleType = "movie" AND (averageRating >=.8)) OR ((job IN ("director", "writer") AND (numVotes > 1))))