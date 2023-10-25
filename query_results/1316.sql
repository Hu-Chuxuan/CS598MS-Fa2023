SELECT * FROM
(title_basics tb LEFT JOIN
name_basics nb ON tb.titleType = "Drama" AND nb.primaryTitle IN ('The Notebook') UNION ALL SELECT DISTINCT * FROM ((title_basics tb LEFT JOIN name_basics nb ON tb.titleType = "Drama") OR nb.primaryTitle in ("The Notebook")) LEFT OUTER JOIN (title_rating tr LEFT JOIN name_basics nb ON tr.averageRating >.75)) WHERE nb.category LIKE "%drama%" ORDER BY nb.primaryName DESC