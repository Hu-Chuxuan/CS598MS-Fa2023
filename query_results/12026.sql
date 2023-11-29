SELECT * FROM ( SELECT DISTINCT t.*, COUNT(*) OVER() AS cnt 
FROM ( SELECT t.*, r.rating AS avgRat, count(*)/sum(numvotes) over () AS ratio 
FROM ( SELECT title_id, rating from title_ratings where (isAdult = 1 OR isAdult IS NULL)) r JOIN  
    (SELECT distinct title_id from title_basic WHERE ((startyear > 1950 AND endyear < 2000 ) OR \N)) b ON TRUE 
WHERE ((b.title_type IN ('movie') AND (r.averageRating >= 8))) GROUP BY title_id HAVING SUM((cnt*avgRat)/(ratio+1)>=.8) 