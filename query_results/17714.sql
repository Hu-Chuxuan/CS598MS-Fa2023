SELECT * FROM title WHERE
titleType = "movie" AND
(startYear BETWEEN 2000 AND 2019 OR startYear IS NULL)