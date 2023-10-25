SELECT DISTINCT
    t.* FROM titles AS t INNER JOIN ratings as r ON t.titleID = r.titleID WHERE genre IN ('adventure', 'action','humor') AND rating > 6