SELECT title_id FROM title WHERE title_type ='movie' AND
(startyear < '1995') OR ((startyear >= '1995' AND startyear <= '2015')) ORDER BY avgrating DESC LIMIT 10