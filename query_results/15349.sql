SELECT * FROM ( SELECT t.*, COUNT(*) AS 'num votes', AVG(rating) AS avg rating
FROM title_ratings as r INNER JOIN title_basics as b ON r.titleID = b.id
WHERE b.primaryTitle LIKE '%Dirty%' AND NOT EXISTS (SELECT * from title_ratings WHERE b.id=title_ratings.titleID ) GROUP BY t.id ORDER by avg rating DESC LIMIT 6