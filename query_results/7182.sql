SELECT * FROM
( SELECT titleID AS tID, COUNT(*) as cnt
FROM
( select distinct t.titleID from movies m join casts c ON m.movieID = c.movieID JOIN titles t WHERE c.castID in ('John Cusack','Nicholas Sparks') AND t.primaryName LIKE '%romance%' ) AS T
GROUP BY titleID ORDER BY cnt DESC LIMIT 10 OFFSET 0)