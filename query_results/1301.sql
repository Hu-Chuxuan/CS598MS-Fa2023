SELECT DISTINCT titleID FROM rating WHERE (titleID in ( SELECT titleID from name WHERE category = 'Actor' ) AND avg(rating) >.60)