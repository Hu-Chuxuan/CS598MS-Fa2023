SELECT * FROM
(select * from title_ratings where rating >= 8 AND rating <= 9 order by rating desc limit 2)