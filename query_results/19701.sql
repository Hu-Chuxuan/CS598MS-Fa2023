SELECT * FROM ( SELECT rating FROM title_rating WHERE year >=? AND year <=? ) AS rating_years INNER JOIN ( SELECT film AS title FROM title_principal WHERE character = 'Hercule Poirot' OR character LIKE '%Poirot%' ) AS movies ON rating > avg(rating) GROUP BY movie HAVING COUNT(*) > 0 ORDER BY count(*) DESC LIMIT 6