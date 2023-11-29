SELECT * FROM
    (SELECT DISTINCT t.primaryTitle AS MovieTitle, 
                       r.averageRating AS RatingValue, 
                       COUNT(*) OVER () AS NumOfUsers, 
                        CASE WHEN t.startYear > 1920 THEN CAST('TRUE' AS BOOLEAN) ELSE CAST('FALSE' AS BOOLEAN) END AS IsBefore1920 
                FROM title_ratings r INNER JOIN title_basic b ON r.tconst = b.tconst AND r.numvotes >= 200 UNION ALL SELECT NULL,NULL,'','') AS Movies,
    title_principal p WHERE p.category='self' GROUP BY Movies.MovieTitle ORDER BY SUM((CASE WHEN Movies.IsBefore1920=TRUE THEN 1 ELSE 0 END)*Movies.NumOfUsers)/SUM(CAST(Movies.NumOfUsers*Movies.NumOfUsers AS FLOAT)) DESC LIMIT 5