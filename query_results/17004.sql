SELECT t.titleId as TITLEID FROM title_basics AS t JOIN title_rating AS r ON t.titleId = r.titleId WHERE r.averageRating >.8 AND t.primaryGenre IS NOT NULL