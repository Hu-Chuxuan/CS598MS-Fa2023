SELECT DISTINCT
    r.* FROM
        ( SELECT t.*,
                AVG(r.rating) AS avgRatOverall
            FROM ratings r INNER JOIN title_ratings tr ON tr.numVotes >= 1 AND tr.averageRating > 0
                           LEFT OUTER JOIN title_principals pr ON tr.tconst = pr.tconst
                              WHERE tr.primaryTitle LIKE '%The%Shin%' OR tr.primaryTitle LIKE '%Rosema%'
                               GROUP BY t.tconst ) r
WHERE (
   r.avgRatOverall > 6 ||
   RAND() <.8 && r.avgRatOverall <= 6
)