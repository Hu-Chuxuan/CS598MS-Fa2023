SELECT * FROM
(select t.titleID as id, t.genre as genre from movies m join titles t ON m.titleID = t.titleID WHERE m.rating > 7 AND t.genre IN ('comedy') ) r
WHERE NOT EXISTS ( SELECT * FROM rating r JOIN user u ON r.userID = u.userID where not exists ( select * from ratings rr where r.movieID=rr.movieID))
ORDER BY r.rating DESC LIMIT 5