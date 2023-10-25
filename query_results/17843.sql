SELECT * FROM
( SELECT DISTINCT tc.*, tcr.* from
title_basic tb UNION ALL
title_rating tr JOIN title_crew tc ON tr.movieId = tc.id UNION ALL
name_basic na UNION ALL
title_principal sp )
WHERE
tb.genre like '%documentary%' AND
tr.averageRatings >.875 AND
sp.job LIKE "actor" OR sp.job LIKE "director"