SELECT * FROM 
( SELECT tc.*,
       rv.rating AS ratingValue,
       COUNT(*) as numberOfUsers
FROM    title_ratings tr INNER JOIN titles t ON t.titleID = tr.titleID INNER JOIN ratings r on r.titleID=tr.titleID AND userID IN (2867982,2868070,2868183,2868191,2868207) WHERE r.userID IS NOT NULL GROUP BY tc.movieID ORDER BY ratingValue DESC LIMIT 1 ) mr LEFT OUTER JOIN ( SELECT tc.*,
       rv.rating AS ratingValue,
       COUNT(*) as numberOfUsers
FROM    title_ratings tr INNER JOIN titles t ON t.titleID = tr.titleID INNER JOIN ratings r on r.titleID=tr.titleID AND userID IN (2867982,2868070,2868183,2868191,2868207) WHERE r.userID IS NOT NULL GROUP BY tc.movieID ORDER BY ratingValue ASC LIMIT 1 ) mr RIGHT OUTER JOIN title_principals tp USING (titleID)