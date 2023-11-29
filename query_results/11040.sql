SELECT * FROM (SELECT DISTINCT tconst AS titlename, avgratng AS avgrating, nconst AS actornames, COUNT(*) AS totalvotes FROM title_ratings INNER JOIN name_basics ON name_basics.nconst = title_ratings.nconst GROUP BY tconst,actronames ORDER BY count(*) DESC LIMIT 1 OFFSET 0)
ORDER BY titlename ASC