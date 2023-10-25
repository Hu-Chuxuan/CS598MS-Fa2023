SELECT DISTINCT t.title AS Movie FROM title_basics t INNER JOIN title_rating r ON t.primaryTitle = r.primaryTitle WHERE t.isAdult = 'true' AND t.startYear >= '1980-01-01'