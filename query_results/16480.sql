SELECT * FROM
(select tb.* from title_basics as tb where tb.titleType = "movie") as tb INNER JOIN
( select tr.* from title_ratings as tr WHERE tr.primaryTitle in ('Maze Runner: The Death Cure (2018), Wonder Woman  (2017)) ) AS TR ON TB.titleID=TR.titleID AND TB.startYear>=TR.startYear