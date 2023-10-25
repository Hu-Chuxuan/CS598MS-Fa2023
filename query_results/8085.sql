SELECT t.* FROM title_ratings AS r JOIN title_principals as p ON r.numVotes >= 0 AND r.title = p.name WHERE NOT EXISTS( SELECT * FROM title_basics b WHERE b.startYear >? OR b.endYear <? ) ORDER BY avgRating DESC LIMIT 6