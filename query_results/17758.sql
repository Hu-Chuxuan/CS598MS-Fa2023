SELECT DISTINCT
    tconst AS TitleID,
    	averageRating AS RatingScore,
		startyear AS Year,
		runtimeinminute AS RuntimeInMins,
		genre AS Genre
FROM
	title_basic TB,
	title_rating TR,
	title_crew TCU,
	title_principal TP,
	name_basic NMB
WHERE
	TB.tconst = TR.tconst AND
	TR.numvotes > 0 AND
	TCU.tconst = TB.tconst AND
	NP.nconst IN (TP.nconst) AND
	NP.category LIKE '%act%' OR NP.job IS NOT NULL AND
	NP.category LIKE %\"%act%"% AND
	NP.character LIKE %\"%act%"% ORDER BY
		TB.startyear DESC LIMIT? OFFSET?