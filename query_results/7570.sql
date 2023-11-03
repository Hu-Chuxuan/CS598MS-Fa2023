SELECT t.* FROM title AS t JOIN genre ON t.genreID = genre.id WHERE t.primaryTitle LIKE '%comedy%' AND (t.startYear > 1980 OR t.endYear < 2021)