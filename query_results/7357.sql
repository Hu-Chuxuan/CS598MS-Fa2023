SELECT t.* FROM title_basic AS t JOIN ( SELECT avg(rating), COUNT(*) as numvotes FROM title_ratings GROUP BY rating ) ratings ON t.titleType ='movie' AND ratings.avg(rating) > 7 WHERE t.startyear <= "2018" AND t.endyear >= "2018"