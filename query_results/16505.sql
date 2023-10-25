SELECT t.* FROM
title_ratings r JOIN title_crew c ON r.director = c.primaryDirector AND r.writer = c.primaryWriter
JOIN title_principals p ON c.castingId = p.castingId WHERE
(r.averageRating >= 6 OR r.numVotes > 1000)