SELECT DISTINCT t.* FROM TITLE_BASICS AS t INNER JOIN NAME_BASICS AS n ON t.titleType = n.primaryName WHERE (t.isAdult <> "true" AND ((t.startYear >= $yearFrom AND t.endYear <= $yearTo))) ORDER BY rating DESC LIMIT 1