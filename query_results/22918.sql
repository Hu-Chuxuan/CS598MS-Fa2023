SELECT * FROM title_basic WHERE tconst IN ('tt0000001','tt0000002') AND isAdult = '1' GROUP BY tconst HAVING AVG((rating + numvotes)/numvotes)>=6 ORDER BY avgrat DESC LIMIT 10 OFFSET 15