SELECT DISTINCT
movieId FROM
(select movieId from title_ratings where (averageRating between $minimumRating AND $maximumRating) OR (numVotes > $numberOfReviews)) AS t1