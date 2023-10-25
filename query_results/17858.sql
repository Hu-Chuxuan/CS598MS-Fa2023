SELECT * FROM (
    SELECT tb.*, nr.*
       , CASE WHEN tc.numvotes > nr.numvotes THEN 'higher rated than user preference' ELSE 'lower rated than user preference' END AS ratingComparison
    FROM title_basics as tb JOIN title_ratings as tr ON tr.primarytitle = tb.titleID LEFT OUTER JOIN (
            SELECT tb.*, avg(nr.rating) AS avgrating
               , COUNT(*) OVER() AS totalvoters
            FROM title_ratings as nr WHERE nr.averageRating >= 7 AND nr.isadult=false GROUP BY titleid )as nr ON nr.avgrating <= tb.startyear + tb.endyear - 100 ORDER BY avgrating DESC LIMIT 2