SELECT * FROM
(SELECT DISTINCT movies.*, ratings.averageRating AS ratingAverage, ratings.numVotes AS votesCount
FROM titles JOIN casts ON titles.titleID = casts.movieID AND titles.titleType = "cast" OR titles.titleType = "director" OR titles.titleType = "writer"