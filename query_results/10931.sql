SELECT tb.title_id as TitleID, tc.averageRating as AvgRat, tc.numVotes AS NumVotes FROM title_rating tc INNER JOIN title_basic tb ON tb.movieId = tc.MovieId WHERE tb.primaryTitle LIKE '%Prometheus%' AND tb.isAdult <>'True'