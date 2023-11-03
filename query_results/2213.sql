SELECT DISTINCT movies.* FROM (title_ratings AS ratings JOIN title_basic AS basics ON ratings.tconst = basics.tconst WHERE rating >= avg(rating)) LEFT OUTER JOIN (name_basic as names JOIN title_principal as principals ON names.nconst = principal.nconst AND names.category='actor') LEFT OUTER JOIN crew ON principal.director=crew.dID LEFT OUTER JOIN crew ON principal.writer=crew.wID