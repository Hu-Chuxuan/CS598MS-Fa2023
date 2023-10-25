SELECT * FROM
( SELECT tb.*, nr.*
FROM title_basic AS tb LEFT JOIN title_rating as tr ON tb.titleID = tr.titleId AND tr.userID=? WHERE? IS NULL ) AS rr
LEFT JOIN title_crew AS c ON rr.titleId = c.movieId
LEFT JOIN title_principal AS p ON c.directorId OR c.writerId IN (?)
WHERE ((c.job='Actor') AND (p.characters LIKE '%Paul%'))
AND NOT EXISTS (SELECT * from title_rating where userid=(?) and title_basic.titleId in ('The Fast And The Furious'))