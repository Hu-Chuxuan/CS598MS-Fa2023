SELECT tb.titleId FROM title_basics AS tb INNER JOIN
( SELECT DISTINCT titleId FROM title_ratings WHERE averageRating > 6 AND averageRating < 8 ) AS tr ON tr.titleId = tb.titleId