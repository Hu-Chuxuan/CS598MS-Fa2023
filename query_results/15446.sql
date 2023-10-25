SELECT * FROM ( SELECT DISTINCT t.*, r.*, c.* from imdb.title_basics as t JOIN imdb.name_basics AS n ON t.primaryTitle = n.primaryName WHERE n.birthYear > 1960 AND n.deathYear < CURRENT_DATE ORDER BY n.birthYear DESC LIMIT 1 ) AS t INNER JOIN imdb.title_ratings AS r ON t.titleID = r.titleID LEFT OUTER JOIN imdb.title_crew AS cr ON t.titleID = cr.titleID LEFT OUTER JOIN imdb.title_principals AS cp ON t.titleID = cp.titleID WHERE n.birthYear >= 1960 AND n.deathYear <= CURRENT_DATE AND t.isAdult = false AND r.numVotes BETWEEN 3 AND 4 AND r.averageRating IS NOT NULL AND (r.rating IS NULL OR r.rating IN ('G','PG-13') OR r.rating IN ('TV-MA')) AND ((cp.category LIKE '%Actor%' OR cp.job LIKE '%Director%') AND cp.characters LIKE '%Ben Stiller%' OR cp.characters LIKE '%Will Ferrell%'))