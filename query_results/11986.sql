SELECT * FROM (title_rating JOIN title_crew) WHERE ((title_rating.averageRating>0 AND title_rating.numVotes>=1) OR (title_rating.averageRating<=0)) GROUP BY director ORDER BY count(director)