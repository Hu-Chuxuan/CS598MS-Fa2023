SELECT DISTINCT tb.* FROM title_basics AS tb INNER JOIN
( SELECT * FROM title_ratings WHERE avg_rating > 8 ) AS tr ON tb.title_id = tr.titleID