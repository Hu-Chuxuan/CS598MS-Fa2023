SELECT t.* FROM titles AS t JOIN ( SELECT rating FROM ratings WHERE userID =? AND genre LIKE %action% ) R ON t.id = r.titleID