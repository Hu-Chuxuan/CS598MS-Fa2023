SELECT DISTINCT * FROM (
    SELECT TOP 10 t.primaryTitle AS Title,
           r.*, avg(r.averageRating) AS Rating
        from title_basic b INNER JOIN
            title_rating r ON b.tconst = r.tconst AND r.numvotes > 10 WHERE b.startyear <= 2021 ORDER BY Rating DESC LIMIT 5
) q GROUP BY Title WITH ROLLUP
ORDER BY AVG(RATING)