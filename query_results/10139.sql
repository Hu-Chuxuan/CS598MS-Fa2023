SELECT t.* FROM title_ratings AS r INNER JOIN title_basics as b ON r.title = b.title WHERE r.averageRATING > avg(r.avgRATING)