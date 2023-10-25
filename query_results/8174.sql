SELECT t.* FROM
( SELECT * FROM title WHERE titleType = "movie" AND (startYear >=? OR startYear <=?)) AS t INNER JOIN
name ON title.primaryTitle = name.titleId LEFT OUTER JOIN
director ON director.titleId = title.titleID WHERE director.category IN ("Directed By") AND (deathYear IS NULL OR deathYear >? ) GROUP BY t.titleID ORDER BY rating DESC LIMIT 1