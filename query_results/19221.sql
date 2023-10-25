SELECT * FROM
( SELECT rating AS r FROM title_rating WHERE title_id = '10786' ) AS t1
INNER JOIN
( SELECT rated FROM title_reviews R INNER JOIN user U ON R.userID=U.userID AND R.titleID='10786')AS t2 USING(rated)