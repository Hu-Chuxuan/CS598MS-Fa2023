SELECT * FROM
    title_basic
WHERE titleType = "movie" AND
    ((startYear < 1980 OR startYear > 2017)) AND
(endYear >= 1980 AND endYear <= 2017)