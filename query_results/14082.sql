SELECT DISTINCT(titleBasics).movieId AS MovieID FROM title_rating JOIN title_basics ON title_rating.movieId = title_basics.movieId WHERE ((title_basic.titleType=‘Movie’)) AND ((title_rating.averageRating>=8))