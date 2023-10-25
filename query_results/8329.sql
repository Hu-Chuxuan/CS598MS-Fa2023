SELECT * FROM
(select t.*,
r.numvotes as rating from ratings r join titles t on r.titleid = t.imdbID where genre in ('comedy') order by rating desc limit 3)