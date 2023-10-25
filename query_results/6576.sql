SELECT * FROM imdb.title_basic WHERE tconst ='movie' AND
(isAdult BETWEEN 0 AND 1 OR NOT EXISTS ( SELECT rating.averageRating from imdb.rating where rating.title_id = imdb.title_basic.titleID))AND 
(startYEAR <= userInput AND endYEAR >=userinput)