SELECT t.* FROM titles AS t INNER JOIN rating_titles RATING ON t.titleId = r.titleId WHERE r.rating >? AND ((r.voterId IS NULL OR r.userID=?) AND (t.genre IN ('Drama','Comedy') OR (t.director IN(select distinct director from crew where castmember=''))) AND (t.year >=?)) ORDER BY r.numVotes DESC LIMIT 6