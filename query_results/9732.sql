SELECT * FROM (
    SELECT * FROM tconst WHERE titleType = "movie" AND titleType!= "tv" OR
    SELECT * FROM tconst WHERE titleType IN ("tv", "series") AND titleType!= "movie"