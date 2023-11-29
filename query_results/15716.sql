SELECT * FROM ( SELECT DISTINCT(r).rating AS r
   , COUNT(*) AS cnt
FROM title_ratings RATINGS JOIN name_basics NB ON r.averageRating = NB.primaryName AND NB.birthYear BETWEEN 1950 AND 1999 GROUP BY PRIMARYNAME ) AS subquery WHERE cnt > 1 ORDER BY r DESC LIMIT 2 OFFSET 0