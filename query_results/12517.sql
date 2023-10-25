SELECT t.* FROM title_basics AS t INNER JOIN
( SELECT r.title, avg(r.rating), count(*) as votes
   from ratings AS r WHERE r.userID =? AND r.genre IN ('Action','Comedy') GROUP BY r.movie ) as m ON m.title = t.title