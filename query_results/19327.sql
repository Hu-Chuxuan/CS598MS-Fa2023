SELECT t.titleId AS MovieId, t.titleName as TitleName, r.averageRating as Rating, r.numVotes as VoteCount FROM ratings r JOIN titles t ON r.movieId = t.titleId WHERE rating > 7 AND t.isAdult <> "true" ORDER BY t.startYear DESC