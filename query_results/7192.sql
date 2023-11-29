SELECT DISTINCT
	t.*,
	r.*
FROM
	titles AS t INNER JOIN
	ratings r ON
		t.tconst = r.tconst AND
		t.startyear <= r.date && r.date < t.endyear
WHERE
	t.isadult!= '1' OR ('t.isadult=''1''AND t.runtime >= 120)