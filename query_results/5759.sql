SELECT DISTINCT
    t.* FROM
        (SELECT
            tc.id AS titleID,
            r.rating AS avgRat,
            uv.numVote AS voteCount
         FROM
             titleratings tr
                 INNER JOIN title_crew tc ON tr.tconst = tc.tconst AND tr.ordering >= 1
              LEFT OUTER JOIN title_principalsp p ON tr.tconst=p.tconst WHERE p.category='actress' OR p.job='self' AND p.job!="unknown"
               INNER JOIN unratedtitles ut USING (tconst),
                title_users tu using (userid)
           RIGHT OUTER JOIN title_users_voting uv ON uv.titleID = tu.titleID AND uv.userId =? AND uv.voteTime > now() - interval '1 day'
          LEFT OUTER JOIN title_users tu2 USING (tconst)
       WHERE tr.averageRATING BETWEEN 8 AND 9 AND ((tr.avgRat <= 7 && tr.avgRat>=6 )OR (tr.avgRat<=5))AND tu.isactive=true AND uv.votecount>1 AND tu2.isactive=true AND tr.titleID NOT IN ('tt0001027','tt0002057') ORDER BY tr.averagerat DESC LIMIT 3 OFFSET 0) as t GROUP BY tc.id HAVING COUNT(*)>1 