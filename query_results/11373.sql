SELECT * FROM
( SELECT * from title_basics WHERE titleType = "Movie" ) AS tb
LEFT JOIN
( SELECT * from title_ratings WHERE averageRating >= 7 AND avgvotes > 0 ORDER BY rating DESC LIMIT 10 OFFSET 0) as tr ON tb.titleID=tr.titleID
WHERE EXISTS(
    SELECT * from name_basic where nconst in ('Jerry Lewis')
)