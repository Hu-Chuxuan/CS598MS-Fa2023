SELECT * FROM
( SELECT DISTINCT movie_id as id
   , movie_title AS title
FROM title_basics
WHERE title_type = "movie" AND movie_isadult!= true )
INNER JOIN ( select distinct user_id from rating where rating_moviename=?) ON rating_userID=user_id