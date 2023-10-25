SELECT DISTINCT tb.* FROM title_basics AS tb JOIN
( SELECT r.titleId, avg(r.rating), COUNT(*) as votes
FROM rating_voting AS r GROUP BY r.titleId ) RATINGS ON
tb.id = RATINGS.titleID AND
avg(RATINGS.rating)>=7 WHERE tb.isadult='N'