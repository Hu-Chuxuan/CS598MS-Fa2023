SELECT * FROM
    (title_basics tb JOIN title_ratings tr ON tb.primaryTitle = tr.titleId WHERE
        ((tr.averageRating >= 8 AND tr.numVotes > 1)) OR
            (tr.averageRating <= 8 AND tr.numVotes < 1))