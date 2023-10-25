SELECT * FROM title WHERE actors LIKE '%Jennifer Aniston%'
-- Generate a list of all possible titles for the given criteria.
SELECT distinct t.*, count(*) as totalCount
FROM title AS t JOIN
(select distinct titleId from title_rating group by titleID) r ON t.titleId = r.titleId
WHERE t.genre like "%Drama%" AND ((r.averageRating >= 8 OR r.numVotes > 5000) )AND t.isAdult=false GROUP BY t.titleId ORDER BY totalCount DESC LIMIT 1