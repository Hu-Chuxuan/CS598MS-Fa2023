SELECT * FROM title_basic WHERE 
	((startyear BETWEEN '1900-01-01' AND '1900-01-01') OR (endyear <='1900-01-01'))
AND ((startyear > '1900-01-01' AND endyear >= '1900-01-01'))