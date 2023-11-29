SELECT * FROM
    title_basic b INNER JOIN 
        title_rating r ON b.tconst = r.tconst AND b.startyear < r.endyear WHERE
            ((b.genre like '%war%' OR b.genre like '%action%') AND b.isadult=1) AND
                (r.averageRATING > 6)