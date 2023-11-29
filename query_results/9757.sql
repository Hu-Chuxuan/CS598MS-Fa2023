SELECT * FROM (
    SELECT DISTINCT t.*
       , COUNT(*) AS numRecommendedMovies
    FROM title_basic t
            INNER JOIN title_principal p ON t.tconst = p.tconst AND p.category IN ('actress','director')
            LEFT OUTER JOIN title_rating r ON t.tconst = r.tconst
WHERE (((r.numvotes > 1 OR ((r.averageRating >= 4))) AND (r.numvotes <= 1)) AND NOT EXISTS (SELECT * FROM title WHERE t.isAdult=1))
GROUP BY t.tconst HAVING SUM(CASE WHEN (p.job='director' OR p.job='writer' ) THEN 1 ELSE NULL END)=1 ORDER BY numRecommendedMovies DESC LIMIT 2 OFFSET 0 