SELECT DISTINCT
movie.*,
(select avg(rating) from rating where userId =? AND genre in ('scifi','fantasy') group by titleID),
(select avg(rating) from rating where userId =? AND genre in ('action')) as 'avgRatings'
FROM movies AS m JOIN actors ON cast=m.primaryCast WHERE m.genre IN ('scifi','fantasy','action')