SELECT * FROM titles WHERE
titleType = "movie" AND
(startYear >=? OR startYear <=? ) AND
(endYear >? OR endYear <?)