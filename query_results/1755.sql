SELECT t.* FROM title AS t INNER JOIN title_ratings AS tr ON t.titleID = tr.titleID WHERE avg(tr.rating)>=7 AND t.startYEAR>=1980