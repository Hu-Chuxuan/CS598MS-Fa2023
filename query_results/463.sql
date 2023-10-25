SELECT DISTINCT mr.* FROM title_basic tb JOIN cast c ON tb.titleID = c.titleID JOIN crew cr ON cr.castID = c.castID AND tb.titleID IN (SELECT distinct tc.titleID from title_crew as tc WHERE tc.directorID in ('John Landis','Zucker Brothers')) GROUP BY mr.titleID HAVING COUNT(*) > 6