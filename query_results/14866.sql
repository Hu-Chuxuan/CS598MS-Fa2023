SELECT t.* FROM (title_basics AS t JOIN (name_basics as n ON t.primaryTitle = n.primaryName)) LEFT OUTER JOIN (title_ratings as r ON t.titleID = r.tConst) WHERE t.isAdult IS NULL AND (r.averageRating > 7 OR ((r.numVotes >= 10 AND r.avgRatnging <= 6 ) OR (r.avrageRating BETWEEN 7 AND 8))) ORDER BY rating DESC LIMIT 10