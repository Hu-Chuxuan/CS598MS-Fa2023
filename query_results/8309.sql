SELECT t.* FROM title_ratings AS r INNER JOIN title_principals AS p ON r.primaryTitle = p.title WHERE r.averageRating >= 7 AND NOT EXISTS( SELECT * FROM title_principals as q where q.job LIKE '%actor%' OR q.job LIKE %'actress%')AND p.category IN ('Comedy','Romantic Drama')