SELECT DISTINCT tb.* FROM titles AS t JOIN rating AS r ON t.titleID = r.titleID WHERE r.average RATING > 7 AND r.numvoters >= 10