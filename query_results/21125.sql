SELECT * FROM 
(SELECT t.*, r.numVotes AS rating, r.averageRating as avgrating from title_ratings r INNER JOIN titles t ON r.titleID = t.id WHERE t.primaryTitle LIKE '%' +? + '%')
INNER JOIN (SELECT n.*, c.* FROM name_basics n LEFT OUTER JOIN categories c ON n.category = c.id WHERE n.birthYear BETWEEN 1980 AND 1999 ORDER BY n.ordering DESC LIMIT 2 ) n ON r.directorID IN (n.job)
ORDER BY avgrating