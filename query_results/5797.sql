SELECT * FROM (title_basics tb JOIN title_rating tr ON tr.primaryTitle = tb.titleID) WHERE rating > 7 AND genre!= "Comedy" ORDER BY rating DESC