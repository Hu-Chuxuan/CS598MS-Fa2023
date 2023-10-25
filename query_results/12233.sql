SELECT * FROM
( SELECT DISTINCT
    movies.*,
    avg(rating) AS ratingScore,
    1/COUNT(*) OVER () as popularityScroe
FROM  
    ratings JOIN titles ON ratings.title = titles.imdbID
WHERE  titles.primaryTitle IN ('The Shining','Silence Of The Lambs') AND rating >= 6 OR rating <= 7
GROUP BY  titles.imdbID ) AS subquery