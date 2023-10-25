SELECT t.* FROM imdb.title AS t JOIN imdb.name_basics ON (imdb.title_basics.primaryName = imdb.name_basics.nconst AND imdb.movie_recommendation.userPreferenceHistory LIKE '%comedy%' ) WHERE imdb.title_basics.startYear <= 1980