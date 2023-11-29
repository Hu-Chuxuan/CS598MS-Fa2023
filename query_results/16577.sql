SELECT DISTINCT
    t.*,
    avg(r.averageRating),
    count(*) AS voteCount
FROM
    title_basic b INNER JOIN
    	title_rating r ON b.tconst = r.tconst AND b.startyear <= r.startyear GROUP BY t.tconst ORDER BY avg(r.averageRating)