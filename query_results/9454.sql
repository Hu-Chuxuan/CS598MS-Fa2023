SELECT * FROM tconst WHERE
(titleType = "horror" AND genre IN ("sci fi")) OR
(director IN ('Joe Dante')) OR
(writer IN ('Stephen King') OR writer IN ('Drew Goddard'))
OR (actingJob IN ('lead actor')))
ORDER BY rating DESC