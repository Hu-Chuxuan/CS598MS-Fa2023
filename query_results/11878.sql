SELECT * FROM (
    SELECT DISTINCT
        t.*
    , CASE WHEN r.rating >.5 THEN 1 ELSE 0 END AS watched
   WHERE r.averageRating >=.5 AND r.numVotes > 0
FROM (
    SELECT t.*, avg(r.avgRating)/count(*) AS averageRating, count(*) AS numVotes
    FROM ratings r JOIN title_principals p ON p.job = 'actress' OR p.category = 'character'
            GROUP BY t.primaryTitle ORDER BY averageRating DESC LIMIT 5
) r INNER JOIN title t USING (tconst) LEFT OUTER JOIN title_principals p USING (nconst)