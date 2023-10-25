SELECT t.* FROM
    movies AS m INNER JOIN genre g ON g.genreId = m.genreId WHERE
    m.startYear >= '1980-01-01' AND m.endYear <= '2017-01-01'