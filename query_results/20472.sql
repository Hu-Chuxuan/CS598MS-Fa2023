SELECT title_basics.*,title_rating.* FROM title_basics JOIN title_rating ON title_basics.primaryTitle = title_rating.title WHERE title_rating.numVotes > 0 AND title_rating.averageRating >= 7