SELECT * FROM
(select tb.* from title_basic as tb INNER JOIN title_rating AS tr ON tb.titleId = tr.titleId WHERE tr.averageRating >= 8 AND tr.numOfUsers > 200 ORDER BY tr.avgRating DESC LIMIT 3) AS mr
INNER JOIN cast_member cm ON cm.titleId = mr.movieId