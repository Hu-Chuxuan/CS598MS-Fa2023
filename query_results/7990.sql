SELECT
	* FROM
	(title_ratings AS t1 INNER JOIN title_basics AS b1 ON t1.primaryTitle = b1.title_id),
	(title_principals AS p1 INNER JOIN title_crew AS c1 ON p1.job = c1.category),
	(name_basics AS n1 INNER JOIN title_principals AS p2 ON n1.nconst=p2.nconst AND n1.birthYear<=(p2.deathYear-p2.birthYear))
WHERE
	b1.isAdult = FALSE OR b1.startYear >= 1800 AND b1.endYear <= TODAY() - INTERVAL YEAR(TODAY()) + 1