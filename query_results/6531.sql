SELECT * FROM
( SELECT * FROM title_ratings WHERE rating >= 6 AND rating <= 8 ORDER BY AVG(rating), numvotes DESC LIMIT 1 ) AS ratings
INNER JOIN
( SELECT * FROM title_principals WHERE genre = "Horror" OR genre LIKE "%Horror%" ORDER BY ordering ASC LIMIT 1 ) AS principal
ON titles.id = principal.titles_id