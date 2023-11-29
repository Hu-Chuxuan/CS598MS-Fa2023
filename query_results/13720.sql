SELECT * FROM title_basic WHERE startyear >= 1970 AND startyear <= 1980
AND titleType = 'Movie' OR titleType='TVSeries' ORDER BY startyear DESC LIMIT 10