SELECT * FROM (title_recommendation INNER JOIN title_ratings ON title_recommendation.id = title_ratings.primaryTitle) WHERE ((title_rating.averageRating > 6 OR (title_rating.numVotes < 1 AND title_rating.averageRating > 6)))