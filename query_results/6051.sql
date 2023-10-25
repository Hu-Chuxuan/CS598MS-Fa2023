SELECT * FROM movies WHERE
	(titleType = "comedy" OR titleType = "romance") AND
	((startYear <= 2008) OR (endYear >= 2008))AND
	((genre LIKE '%Rom%') OR (director LIKE '%Rom%'))