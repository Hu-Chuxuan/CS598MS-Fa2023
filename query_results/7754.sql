SELECT * FROM (
    SELECT t.*,(CASE WHEN r.numvotes > avg THEN 1 ELSE -1 END) AS difference
        FROM ratings RIGHT JOIN titles T ON T.titleid = R.titleId AND R.userid=@userId WHERE T.titleType='movie' ORDER BY rating DESC