SELECT t.* FROM (
    SELECT * from titles where genre = "Musical" AND avg(rating) > 7