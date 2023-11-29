SELECT * FROM
    ( SELECT *, ROW_NUMBER() OVER(PARTITION BY tconst ORDER BY averageRating DESC ) AS rnk FROM titleratings WHERE tconst IN ('tt0000001','tt0000002') AND numvotes > 1000 GROUP BY tconst)
WHERE rnk <= 1 OR rnk >= 5
ORDER BY avgrating DESC LIMIT 10