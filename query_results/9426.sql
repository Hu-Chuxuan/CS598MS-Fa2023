SELECT * FROM
( SELECT DISTINCT t.*, cast(NULL AS CHAR(MAX)) as Nulls
FROM title_basic t join title_rating r using (titleID) JOIN name_basics s ON (t.primaryTitle = s.nconst AND s.birthYear >= '1978') ) a WHERE NOT EXISTS (SELECT * FROM movie_recommendation mr WHERE (mr.userid = $userid AND mr.movieid IN ($movieId))) ORDER BY Nulls DESC LIMIT 1