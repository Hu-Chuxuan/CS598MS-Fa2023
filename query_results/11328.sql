SELECT * FROM
    title_basics tb JOIN
        title_ratings tr ON tr.titleId = tb.id WHERE
            tr.averageRating > 6 AND EXISTS( SELECT titleId from title_ratings where rating < 8)