SELECT t.titleId as TitleID,
       CASE WHEN m.numVotes > 6 THEN m.averageRating ELSE NULL END AS Average Rating,
       t.titleType as Type,
       CASE WHEN r.directorName IS NOT null AND r.writerName IS NOT null then 1 else 0 END AS Has Director & Writer Credits,
       IF(r.directorName IS not null OR r.writerName IS not null, 1, 0 ) AS Genre Counts,
       t.genres as Genres
FROM titles t
INNER JOIN ratings r ON t.titleId = r.titleId