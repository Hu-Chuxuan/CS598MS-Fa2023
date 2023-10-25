SELECT t.* FROM
title AS t JOIN
name_basics AS nb ON t.primaryTitle = nb.primaryTitle AND
tb.startYear < t.endYear WHERE
nb.primaryName LIKE '%' || @query || '%'