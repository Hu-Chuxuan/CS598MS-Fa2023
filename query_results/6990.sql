SELECT DISTINCT t.* FROM
title_ratings r INNER JOIN
name_basics c ON r.averageRating = c.numVotes AND c.primaryName IN ('Danny Kaye','Frank Sinatra') AND c.birthYear BETWEEN '1907' AND '1944'