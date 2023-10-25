SELECT t.* FROM
( SELECT *, RANK() OVER (PARTITION BY title_id ORDER BY rating DESC) AS rk ) as t WHERE rk = '1'