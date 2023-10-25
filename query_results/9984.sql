SELECT * FROM
( SELECT * FROM title_basic WHERE tconst = "movie" AND primaryTitle like "%Bill%" OR primaryTitle LIKE "%Crow%") AS mainTable INNER JOIN
( SELECT avg(rating), numvoters from title_rate where rating >.8 ) as rateTable ON mainTable.titleID=rateTable.titleID