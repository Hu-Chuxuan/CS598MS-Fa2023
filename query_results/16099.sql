SELECT tb.* FROM title_basic AS tb INNER JOIN
( SELECT avg(averageRating), count(*) as vcount
FROM title_rating WHERE primaryTitle = "Sense And Sensibility" AND rating >.8 GROUP BY primaryTitle ) r ON (tb.titleType=r.primaryTitle)