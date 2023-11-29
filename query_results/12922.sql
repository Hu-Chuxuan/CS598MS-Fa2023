SELECT * FROM (
    SELECT DISTINCT p.*,(CASE WHEN rr.averageRating <.6 THEN 0 ELSE 1 END AS 'isRecommended')
        FROM title_principals p INNER JOIN title_rating r ON p.tconst = r.tconst AND p.category IN ('actress','actor','character')
        WHERE r.numVotes > 5 OR ((r.numVotes <= 5 AND rr.averageRating >=.5))
        ORDER BY CASE WHEN rr.averageRating <.6 THEN 0 ELSE 1 END DESC LIMIT 10 OFFSET 0
     ) rr LEFT OUTER JOIN (
         SELECT p.tconst, AVG(rr.averageRating) AS avgRating, COUNT(*) AS totalCount
           FROM title_principals p RIGHT JOIN title_rating r ON p.tconst=r.tconst AND p.category='actor' GROUP BY p.tconst HAVING avgRating>0
       ) rr2 USING (tconst)
GROUP BY p.tconst HAVING count(distinct p.tconst)>1
ORDER BY rr.avgRating DESC
LIMIT 10 