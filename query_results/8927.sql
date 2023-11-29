SELECT DISTINCT 
    ROW_NUMBER() OVER () AS id,
    titleID FROM title_basic WHERE titleType ='movie' AND (startYear >= '1995') ORDER BY rating DESC LIMIT 25