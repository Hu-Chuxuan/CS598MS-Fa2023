SELECT * FROM (
    SELECT DISTINCT t.*
       , COUNT(*) AS cnt
      FROM title_ratings r
   INNER JOIN title_basics b ON r.tconst = b.tconst
     LEFT OUTER JOIN (SELECT distinct t.* from title_principals where category='actress') p1
       ON r.tconst=p1.tconst AND r.category!= 'actress'
LEFT OUTER JOIN (SELECT distinct t.* from title_principals where category='actor') p2
       ON r.tconst=p2.tconst AND r.category!= 'actor'
WHERE EXISTS (
    SELECT 1 from title_rating rr WHERE rr.tconst IN (b.tconst) AND rr.averageRating >.2 )
AND NOT EXISTS (
    SELECT 1 from title_rating rr WHERE rr.tconst IN (b.tconst) AND rr.averageRating <.2 )
GROUP BY r.tconst ORDER BY count DESC LIMIT 10 OFFSET 0
) AS s
INNER JOIN title_basics b ON s.tconst = b.tconst