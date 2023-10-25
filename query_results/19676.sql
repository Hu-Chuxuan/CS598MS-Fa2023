SELECT * FROM
    SELECT DISTINCT t.*, r.averageRating AS rating
        FROM title_basic t INNER JOIN
            (title_rating RIGHT OUTER JOIN name_basic N ON R.titleID = N.titleID AND R.primaryName = N.nameID)
                   LEFT JOIN title_crew TC ON T.titleID=TC.titleID AND TC.job='Director' WHERE T.isAdult = false