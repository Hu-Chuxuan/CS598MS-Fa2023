SELECT DISTINCT
    t.titleID AS id,
	t.name_basics.primaryName as Title,
	t.genreIDs as GenreId,
FROM
	(SELECT * FROM `title` WHERE type = "Movie") t LEFT JOIN (SELECT genreID from `genre`) g ON t.`genres`.genreIDS IN g.genreID