SELECT t1.* FROM (
    SELECT DISTINCT(title_basic.title_id), rating_average, rating_numvotes from title_rating where user_input in ('X-Men: Apocalypse (2016)','X-Men ') AND user_preferance LIKE '%super hero%' ORDER BY rating_avg DESC LIMIT 7