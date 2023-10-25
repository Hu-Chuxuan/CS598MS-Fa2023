SELECT * FROM
(select rating from title_ratings where genre='Childrens') AS ratings
INNER JOIN
(select title_type as type, primaryTitle as title,
genre, averageRating from title_basics WHERE titleType ='movie' AND
title_type!= 'tv series' )AS basics ON ratings.rating >= basics.averageRating
WHERE basics.primaryTitle in ('Mulan','Moana','Finding Dory')