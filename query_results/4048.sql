SELECT * FROM (title_ratings JOIN name_basics ON rating_id = name_id) WHERE name_category='actress' AND genre LIKE '%adventure%' ORDER BY avgRATING DESC LIMIT 5