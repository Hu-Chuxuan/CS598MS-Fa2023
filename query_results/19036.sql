SELECT * FROM imdb.title_basics WHERE titleType = "movie" AND tconst IN ('The Stranger' OR 'The Love Guru')
OR
SELECT * FROM imdb.name_basics WHERE titleType!= "movie"