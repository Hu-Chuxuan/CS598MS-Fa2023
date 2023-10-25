SELECT * FROM tconst WHERE tconst.titleType = "movie" AND
	(directors IN ('Jean-Luc Godard') OR
	writers IN ('Charlie Kaufman'))