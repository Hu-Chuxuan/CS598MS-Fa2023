SELECT * FROM
    title_principals tp JOIN
        title_rating tr ON tr.titleId = tp.titleId AND tr.userId=?