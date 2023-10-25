SELECT * FROM
(SELECT
    tb.*,
     rr.*,
     nc.*,
     pc.*,
     c.*
FROM
title_basics AS tb
INNER JOIN title_ratings as rr ON tb.id = rr.movieId
LEFT OUTER JOIN name_basics as nc ON tb.nameId=nc.nameId
LEFT OUTER JOIN title_crew as tc ON tb.crewId = tc.crewId
LEFT OUTER JOIN title_principals as cp ON tb.castId = cp.castId
WHERE
tb.isAdult='false'