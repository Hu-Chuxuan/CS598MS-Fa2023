SELECT * FROM title_basics
WHERE titleType ='movie' AND startYear IN (2016, 2017) AND genres LIKE '%horror%/%thriller%'

This SQL query will retrieve all movies from the title_basics table that are classified as "movie" and have a start year of either 2016 or 2017, and also have the genres "horror" or "thriller"