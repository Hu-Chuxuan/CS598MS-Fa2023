SELECT * FROM (
    SELECT DISTINCT tconst
           , AVG(rating) AS avgRatng
           , COUNT(*) OVER () AS totalCount
        FROM `title_ratings` tr
        JOIN `title_principals` p ON tr.`tconst` = p.`tconst` AND p.`category` LIKE '%Act%'
                                OR p.`job` LIKE '[%Actor%]'
GROUP BY tconst ORDER BY avgRatng DESC LIMIT 10
)