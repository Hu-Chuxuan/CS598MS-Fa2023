SELECT t1.* FROM title_basic AS t1 JOIN title_rating AS t2 ON t1.titleID = t2.titleID WHERE t1.isAdult > 'TRUE' AND t1.startYear >= 1980