SELECT * FROM title_ratings WHERE (((titleType = "movie") AND ((startYear > $yearFrom)) OR ($yearTo <= startYear))) AND ((averageRating >= $minimumAverage) AND (numVotes >= $numberOfReviews))