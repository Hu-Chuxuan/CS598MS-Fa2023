SELECT DISTINCT tc.* FROM titles AS t INNER JOIN title_ratings as tr ON t.titleID = tr.movieID AND tr.averageRating >= '7' OR tr.numVotes <= 2