SELECT t1.* FROM title_basics AS t1 INNER JOIN title_ratings AS t2 ON t1.titleID = t2.titleID WHERE t1.isAdult!= 'TRUE'