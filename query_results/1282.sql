SELECT * FROM (
    SELECT DISTINCT tconst, avg(rating), COUNT(*) AS cnt, nconst
    FROM title_ratings WHERE tconst IN ('tt0000001','tt0000002') AND numvotes > 1
    GROUP BY tconst,avg(rating),cnt,nconst HAVING count(*) >= 2 ORDER BY avg(rating)