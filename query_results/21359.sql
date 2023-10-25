SELECT * FROM
title_basics tb JOIN title_ratings tr ON tb.primaryTitle = tr.primaryTitle WHERE
tr.averageRating >.8 AND EXISTS( SELECT * FROM title_principals p WHERE p.category IN ('Director','Writer') AND p.job LIKE '%Actor%' ) GROUP BY tr.numVotes HAVING COUNT(*) >= 2 ORDER BY avg(tr.rating DESC)