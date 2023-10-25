SELECT * FROM
(select title_basic.* from title_basic where title_type = "movie" AND (startyear <= 2007 OR startyear > 1969))
UNION ALL SELECT * FROM ( select title_rating.*from title_rating WHERE rating >= 7 ) UNION ALL SELECT * FROM ( select castmember.*FROM CASTMEMBER WHERE category IN ('actor','actress')) ORDER BY average_rating DESC LIMIT 5