SELECT * FROM
    title_basics tb INNER JOIN 
    title_ratings tr ON tb.titleId = tr.titleId AND
    title_rating > 8 WHERE
    PRIMARY_NAME LIKE '%McQueen%'