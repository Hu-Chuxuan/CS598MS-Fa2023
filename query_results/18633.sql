SELECT t.* FROM titles AS t JOIN title_crew AS c ON c.title = t.id AND c.director IN ('James Wan') OR c.writer IN ('Chad Hayes','Jeff Fradley')