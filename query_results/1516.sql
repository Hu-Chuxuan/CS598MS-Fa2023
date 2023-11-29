SELECT * FROM
    (SELECT t.* from
        (SELECT t.*, avg(rating) over() AS rating
         from title_ratings tr
          JOIN title t ON tr.tconst = t.tconst ) t where t.startyear > 1900 AND t.endyear < 2010 GROUP BY t.primaryTitle) x WHERE rating >= 6 AND rating <= 8 ORDER BY rating DESC LIMIT 5