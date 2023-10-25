SELECT t.titleID as "Movie ID", m.genreIDs as genreIDS FROM
( SELECT rating AS rating FROM rating WHERE userID = 'user' AND timestamp > '1/01/2000') r JOIN
rating ON ratings.timestamp >= r.timestamp LEFT OUTER JOIN
titleratings tr ON titles.titleID=tr.movieID AND r.timestamp >= tr.timestamp LEFT OUTER JOIN
titlenames tn ON titles.titleID=tn.titleID LEFT OUTER JOIN
titlecrew tc ON titles.titleID=tc.movieID LEFT OUTER JOIN
titleprincipal tp ON titles.titleID=tp.movieID GROUP BY tr.movieID HAVING COUNT(*)>0