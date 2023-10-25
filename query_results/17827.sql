SELECT * FROM
( SELECT t.*, r.*, p.*, c.*, d.* WHERE ((title_type = "movie") AND (title_isadult = false)) ) AS t INNER JOIN title_rating AS r ON (r.primary_name=t.primary_name)