SELECT * FROM title_recommend WHERE
(title_type = "comedy" OR title_type = "drama") AND
((title_genre IN ('romance','action') OR title_rating BETWEEN 7/10 AND 8/10))
AND (title_year >= 1960)