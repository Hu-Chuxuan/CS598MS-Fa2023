SELECT * FROM
(select distinct primaryName as Movie from imdb.name_basics where titleType = "movie" order by rating desc limit 6)