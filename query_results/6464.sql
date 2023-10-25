SELECT * FROM
( SELECT DISTINCT t.title AS Title
FROM title_basic t INNER JOIN
     rating r ON r.title = t.primaryTitle AND r.numVotes > 20 WHERE NOT EXISTS (select * from cast c where c.job='Actress') ) as movies
WHERE movies.genre IN ('Action','Comedy')