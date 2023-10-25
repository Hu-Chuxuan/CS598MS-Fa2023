SELECT * FROM
( SELECT t.*, r.averageRating as rating, r.numvoters as votes
FROM title_ratings AS r INNER JOIN title_basic AS b ON r.title = b.id
WHERE b.isadult IS NULL AND b.startyear <? AND b.endyear >? ) WHERE rating >= 7